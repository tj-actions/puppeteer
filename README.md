puppeteer
---------

Run Test through Puppeteer, the headless chrome Node API

```yaml
...
    steps:
      - uses: actions/checkout@v2
      - name: Install dependencies
        uses: tj-actions/puppeteer@v1
        with:
          run-args: yarn install
      - name: Run test
        uses: tj-actions/puppeteer@v1
        with:
          run-args: yarn test
```


## Inputs

|   Input       |    type    |  required     |  default             | 
|:-------------:|:-----------:|:-------------:|:---------------------:|
| token         |  `string`   |    `false`    | `${{ github.token }}` |
| node-version  |  `string`   |    `false`    | `10`                  |
| run-args         |  `string`   |    `false`    | `` |



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
