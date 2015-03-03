var gulp = require('gulp');
var exec = require('child_process').exec;

gulp.task('watch', function() {
    gulp.watch('/home/vagrant/code/carrywhat/site/carrywhat/**/*.js', ['collectstatic']);
    gulp.watch('/home/vagrant/code/carrywhat/site/carrywhat/**/*.jsx', ['collectstatic']);
    gulp.watch('/home/vagrant/code/carrywhat/site/carrywhat/**/*.css', ['collectstatic']);
}); 

gulp.task('collectstatic', function() {
    var proc = exec('. /home/vagrant/tfw_venv/bin/activate && sudo /home/vagrant/code/carrywhat/site/manage.py collectstatic --noinput');
    proc.stderr.on('data', function(data) { process.stdout.write(data); });
    proc.stdout.on('data', function(data) { process.stdout.write(data); });
});

gulp.task('default', ['collectstatic', 'watch']);
