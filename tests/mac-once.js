var monitor = require('./../index.js');

function monitorCallback(window) {
    console.log('monitorCallback');
    try {
        console.log(window);
    } catch (err) {
        console.log(err);
    }
}

//Get the current active window
monitor.getActiveWindow(monitorCallback);