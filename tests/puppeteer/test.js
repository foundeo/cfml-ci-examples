const puppeteer = require('puppeteer');

console.log("Starting up");

(async() => {

    const browser = await puppeteer.launch();

    const page = await browser.newPage();
    await page.goto('http://127.0.0.1:8855/', {waitUntil: 'load'});
    console.log(page.url());

    await page.type('#x', '5');
    await page.type('#y', '3');

    await page.click('#addButton');

    setTimeout(async()=> {
        const answer = await page.$eval('#z',  el => { return el.value } );
        if (answer == "8") {
            console.log("Value Was 8");
            await browser.close();
            process.exit(1);
        } else {
            console.log("Value was not 8, it was: " + answer);
            await browser.close();
            process.exit(0);
        }
            
        
    }, 200);
    
    setTimeout(()=> {
        browser.close();
    }, 5000);

    
    
})();