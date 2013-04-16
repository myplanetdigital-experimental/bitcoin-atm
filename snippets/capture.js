// Capture
var imagesnap = require('imagesnap');
var fs = require('fs');
var imageStream = fs.createWriteStream('image.jpg');
imagesnap().pipe(imageStream);

//// Sleep
//var sleep = require('sleep');
//sleep.sleep(5)

