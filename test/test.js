const puppeteer = require('puppeteer');

(async () => {
  const browser = await puppeteer.launch({
    headless: true,
  });
  const page = await browser.newPage();
  await page.goto('https://news.ycombinator.com', {
    waitUntil: 'networkidle2',
  });

  try {
    await page.pdf({path: 'test.pdf', format: 'a4'});
  } catch (e) {
    console.log(e);
  }

  await browser.close();
})();
