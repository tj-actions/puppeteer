ARG NODE_VERSION

FROM node:$NODE_VERSION-buster

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

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true
ENV PUPPETEER_EXECUTABLE_PATH /usr/bin/google-chrome-stable
ENV NODE_VERSION $NODE_VERSION

RUN npm i -g npm && if [ "$(echo "$NODE_VERSION" | cut -d '.' -f 1)" -lt 14 ]; then \
    npm i -g puppeteer@13.7.0 && npm i -g puppeteer-cluster@0.3.2; \
  else \
    npm i -g puppeteer@19.2.2 && npm i -g puppeteer-cluster@0.3.2; \
  fi

RUN node --version
