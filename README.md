## puppeteer

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/ec975b004ce84784bf98347b63f00fbb)](https://app.codacy.com/gh/tj-actions/puppeteer?utm_source=github.com\&utm_medium=referral\&utm_content=tj-actions/puppeteer\&utm_campaign=Badge_Grade_Settings)
[![CI](https://github.com/tj-actions/puppeteer/workflows/CI/badge.svg)](https://github.com/tj-actions/puppeteer/actions?query=workflow%3ACI)
[![Update release version.](https://github.com/tj-actions/puppeteer/actions/workflows/sync-release-version.yml/badge.svg)](https://github.com/tj-actions/puppeteer/actions/workflows/sync-release-version.yml)
[![Public workflows that use this action.](https://img.shields.io/endpoint?url=https%3A%2F%2Fused-by.vercel.app%2Fapi%2Fgithub-actions%2Fused-by%3Faction%3Dtj-actions%2Fpuppeteer%26badge%3Dtrue)](https://github.com/search?o=desc\&q=tj-actions+puppeteer+path%3A.github%2Fworkflows+language%3AYAML\&s=\&type=Code)

Run Test through [puppeteer](https://github.com/puppeteer/puppeteer), the headless chrome Node API

## Environment Variables

*   `PUPPETEER_SKIP_CHROMIUM_DOWNLOAD`
*   `PUPPETEER_EXECUTABLE_PATH`

## Usage

```yaml
...
    steps:
      - uses: actions/checkout@v2
      - name: Install dependencies
        uses: tj-actions/puppeteer@v3.2
        with:
          args: yarn install
      - name: Run test
        uses: tj-actions/puppeteer@v3.2
        with:
          args: yarn test
```

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|    INPUT     |  TYPE  | REQUIRED |         DEFAULT         |                                                                                                                                                  DESCRIPTION                                                                                                                                                  |
|--------------|--------|----------|-------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|     args     | string |   true   |                         |                                                                                                                                           Command to run puppeteer                                                                                                                                            |
| node-version | string |  false   |         `"14"`          |                                                                                                                                                 Node version                                                                                                                                                  |
|    token     | string |   true   | `"${{ github.token }}"` | [GITHUB\_TOKEN](https://docs.github.com/en/free-pro-team@latest/actions/reference/authentication-in-a-workflow#using-the-github_token-in-a-workflow) or a repo scoped [PersonalAccess Token](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/creating-a-personal-access-token) |

<!-- AUTO-DOC-INPUT:END -->

### Using docker

```shell script
docker pull ghcr.io/tj-actions/puppeteer:node-12
```

| Supported node versions |
|:------------------------:|
|   14  |
|   15  |
|   16  |

<!---->

*   Free software: [MIT license](LICENSE)

If you feel generous and want to show some extra appreciation:

[![Buy me a coffee][buymeacoffee-shield]][buymeacoffee]

[buymeacoffee]: https://www.buymeacoffee.com/jackton1

[buymeacoffee-shield]: https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png

## Credits

This package was created with [Cookiecutter](https://github.com/cookiecutter/cookiecutter).

## Report Bugs

Report bugs at https://github.com/tj-actions/puppeteer/issues.

If you are reporting a bug, please include:

*   Your operating system name and version.
*   Any details about your workflow that might be helpful in troubleshooting.
*   Detailed steps to reproduce the bug.
