const puppeteer = require('puppeteer');
const process = require('node:process');


(async() => {
    console.log('starting puppeteer script');
    try {
        const browser = await puppeteer.launch();

        const page = await browser.newPage();
        await page.goto('http://127.0.0.1:8855/', {waitUntil: 'load'});
        console.log(page.url());

        await page.type('#x', '5');
        await page.type('#y', '3');

        await page.click('#addButton');

        setTimeout(async()=> {
            const answer = await page.$eval('#z',  el => { return el.value } );

            await page.screenshot({path: 'screenshot.png'});
            if (answer == "8") {
                console.log("Value Was 8");
                await browser.close();
                process.exit(0);
            } else {
                console.log("Value was not 8, it was: " + answer);
                await browser.close();
                process.exit(1);
            }
            
        }, 500);
        
        setTimeout(()=> {
            console.log("15 Second Timeout Reached");
            browser.close();
            process.exit(1);
        }, 15000);

    } catch (err) {
        console.log('Error running puppeteer');
        console.error(err);
        process.exit(1);
    }
    
    
})();