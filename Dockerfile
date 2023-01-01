ARG NODE_VERSION

FROM node:$NODE_VERSION-buster AS base

RUN apt-get update \
     # See https://crbug.com/795759
     && apt-get install -yq libgconf-2-4 \
     # Install latest chrome dev package, which installs the necessary libs to
     # make the bundled version of Chromium that Puppeteer installs work.
     && apt-get install -y wget --no-install-recommends \
     && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
     && sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' \
     && apt-get update \
     && apt-get install -y google-chrome-stable --no-install-recommends \
     && rm -rf /var/lib/apt/lists/*

# Create a user to run Chrome as
RUN groupadd -r chrome && useradd -r -g chrome -G audio,video chrome \
    && mkdir -p /home/chrome && chown -R chrome:chrome /home/chrome

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true
ENV PUPPETEER_EXECUTABLE_PATH /usr/bin/google-chrome-stable

FROM base AS build

ENV NODE_VERSION $NODE_VERSION

ADD package.json package-lock.json /app/

WORKDIR /app

RUN chown -R chrome:chrome /app

RUN npm install --production

FROM base AS dev

COPY --from=build /app/node_modules /app/node_modules

RUN chown -R chrome:chrome /app

WORKDIR /app

# Run Chrome as non-privileged user
USER chrome

RUN node --version && npm --version
