// Generates SVG files for each image in assets/imgs and saves these in
// _includes/svgs

var potrace = require('potrace');
var fs = require('fs');


fs.readdir('./assets/imgs/', function(err, files) {
    files.forEach(function(file) {
        potrace.trace('./assets/imgs/' + file, function(err, svg) {
            if (err) throw err;
            fs.writeFileSync('./_includes/svg/' + file + '.svg', svg);
        })
    });
});
