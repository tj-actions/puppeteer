const puppeteer = require('puppeteer');

(async () => {
  let args = ['--no-sandbox', '--disable-setuid-sandbox', '--disable-gpu'];

  const browser = await puppeteer.launch({
    headless: true,
    args: args,
    ignoreDefaultArgs: ['--disable-extensions'],
    executablePath: '/usr/bin/google-chrome',
  });
  const page = await browser.newPage();
  try {
    await page.goto('https://google.com', {
      waitUntil: 'load',
    });
  } catch (e) {
    console.log(e);
  }

  try {
    await page.pdf({path: 'test.pdf', format: 'a4'});
  } catch (e) {
    console.log(e);
  }

  await browser.close();
})();
