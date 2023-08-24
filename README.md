## puppeteer

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/ec975b004ce84784bf98347b63f00fbb)](https://app.codacy.com/gh/tj-actions/puppeteer?utm_source=github.com\&utm_medium=referral\&utm_content=tj-actions/puppeteer\&utm_campaign=Badge_Grade_Settings)
[![CI](https://github.com/tj-actions/puppeteer/workflows/CI/badge.svg)](https://github.com/tj-actions/puppeteer/actions?query=workflow%3ACI)
[![Update release version.](https://github.com/tj-actions/puppeteer/actions/workflows/sync-release-version.yml/badge.svg)](https://github.com/tj-actions/puppeteer/actions/workflows/sync-release-version.yml)
[![Public workflows that use this action.](https://img.shields.io/endpoint?url=https%3A%2F%2Fused-by.vercel.app%2Fapi%2Fgithub-actions%2Fused-by%3Faction%3Dtj-actions%2Fpuppeteer%26badge%3Dtrue)](https://github.com/search?o=desc\&q=tj-actions+puppeteer+path%3A.github%2Fworkflows+language%3AYAML\&s=\&type=Code)

Run Test through [puppeteer](https://github.com/puppeteer/puppeteer), the headless chrome Node API

## Usage

```yaml
...
    steps:
      - uses: actions/checkout@v3
      - name: Run test
        uses: tj-actions/puppeteer@v4
        id: puppeteer
        with:
          files: |
            test/test.js
```

See [test](https://github.com/tj-actions/puppeteer/blob/main/.github/workflows/test.yml) for more examples

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|                      INPUT                      |  TYPE  | REQUIRED | DEFAULT | DESCRIPTION  |
|-------------------------------------------------|--------|----------|---------|--------------|
| <a name="input_files"></a>[files](#input_files) | string |   true   |         | Files to run |

<!-- AUTO-DOC-INPUT:END -->

## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->

|                                 OUTPUT                                 |  TYPE  |  DESCRIPTION   |
|------------------------------------------------------------------------|--------|----------------|
| <a name="output_container-id"></a>[container-id](#output_container-id) | string |  Container ID  |
|             <a name="output_home"></a>[home](#output_home)             | string | Home directory |

<!-- AUTO-DOC-OUTPUT:END -->

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
