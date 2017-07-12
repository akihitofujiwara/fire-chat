global <<<< require \prelude-ls
require! <[gulp gulp-plumber gulp-webserver gulp-watch gulp-pug run-sequence]>
{exec} = require \child_process
K = (x, y)--> x
arg = (n)-> -> &.(n)
act = (f, x)--> x |> f |> (K x)

gulp.task \dev, ->
  run-sequence \build, <[watch serve]>

gulp.task \serve, ->
  gulp.src \./dist/ .pipe gulp-webserver(
    host: process.env.IP
    port: process.env.PORT || 3000
  )

gulp.task \build, (next)->
  run-sequence <[pug]>, next

gulp.task \watch, ->
  gulp-watch "#__dirname/../src/**/*.pug", (K \pug) >> gulp~start

gulp.task \pug, ->
  gulp
    .src "#__dirname/../src/**/*.pug"
    .pipe gulp-plumber!
    .pipe gulp-pug!
    .pipe gulp.dest "#__dirname/../dist/"
