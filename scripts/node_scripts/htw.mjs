#!/usr/bin/env node

// npm install puppeteer

import puppeteer from 'puppeteer';
import url from 'url';

let args = process.argv.slice(2);

if (args.length != 2 && args.length != 3) {
    console.log("Usage: TODO");
    process.exit(1);
}
let path = args[0];
let output = args[1];
let margin = {
    'top'   : "30mm",
    'bottom': "30mm",
    'left'  : "30mm",
    'right' : "30mm",
};
if (args.length == 3) {
    margin = {
        'top'   : args[2],
        'bottom': args[2],
        'left'  : args[2],
        'right' : args[2],
    };
}
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
    margin: margin
});

await browser.close();

console.log("DONE")
