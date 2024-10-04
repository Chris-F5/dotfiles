#!/usr/bin/env node

// npm install puppeteer

import puppeteer from 'puppeteer';
import url from 'url';

let args = process.argv.slice(2);

if (args.length != 2) {
    console.log("Usage: TODO");
    process.exit(1);
}
let path = args[0];
let output = args[1];
if (!/^https?:\/\//.test(path)) {
    path = url.pathToFileURL(path).href;
}
console.log(path);

const browser = await puppeteer.launch();
const page = await browser.newPage();

await page.goto(path, {
    waitUntil: 'networkidle2',
});

await page.pdf({
    path: output,
    margin: {
        'top'   : "30mm",
        'bottom': "30mm",
        'left'  : "30mm",
        'right' : "30mm",
    }
});

await browser.close();

console.log("DONE")
