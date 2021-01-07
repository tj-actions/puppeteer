puppeteer
---------

[![CI](https://github.com/tj-actions/puppeteer/workflows/CI/badge.svg)](https://github.com/tj-actions/puppeteer/actions?query=workflow%3ACI)

Run Test through Puppeteer, the headless chrome Node API

```yaml
...
    steps:
      - uses: actions/checkout@v2
      - name: Install dependencies
        uses: tj-actions/puppeteer@v2
        with:
          args: yarn install
      - name: Run test
        uses: tj-actions/puppeteer@v2
        with:
          args: yarn test
```


## Inputs

|   Input       |    type    |  required     |  default             | 
|:-------------:|:-----------:|:-------------:|:---------------------:|
| token         |  `string`   |    `false`    | `${{ github.token }}` |
| node-version  |  `string`   |    `false`    | `10`                  |
| args         |  `string`   |    `true`    |                        |



* Free software: [MIT license](LICENSE)


Credits
-------

This package was created with [Cookiecutter](https://github.com/cookiecutter/cookiecutter).



Report Bugs
-----------

Report bugs at https://github.com/tj-actions/puppeteer/issues.

If you are reporting a bug, please include:

* Your operating system name and version.
* Any details about your workflow that might be helpful in troubleshooting.
* Detailed steps to reproduce the bug.
