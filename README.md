# Dockstep

Heroku-style application builds using Docker and Buildpacks. Based on [Dokku](https://github.com/progrium/dokku) to make a mini-Heroku.

## Requirements

 * Docker
 * Git

## Supported Buildpacks

Buildpacks should generally just work, but many of them make assumptions about their environment. So Dockstep has a list of officially supported buildpacks that are built-in and ready to be used.

 * [Ruby](https://github.com/heroku/heroku-buildpack-ruby)
 * [Node.js](https://github.com/heroku/heroku-buildpack-nodejs)
 * [Java](https://github.com/heroku/heroku-buildpack-java)
 * [Play!](https://github.com/heroku/heroku-buildpack-play)
 * [Python](https://github.com/heroku/heroku-buildpack-python)
 * [PHP](https://github.com/heroku/heroku-buildpack-php.git)
 * [Clojure](https://github.com/heroku/heroku-buildpack-clojure.git)
 * [Go](https://github.com/kr/heroku-buildpack-go.git)
 * [Dart](https://github.com/igrigorik/heroku-buildpack-dart.git)

## Building an App

    $ git clone http://github.com/user/awesome_app.git .cache
    $ docker build -t awesome_app .

The resulting container has a built app ready to go. The builder script also parses the Procfile and produces
a starter script that takes a process type. Run your app with:

    $ docker run -d awesome_app /bin/bash -c "/start web"

## Adding Buildpacks

Dockstep needs to support a buildpack by installing packages needed to run the build and to run the application
it builds. For example, the Python buildpack would need Python to be installed.

To add a new buildpack to dockstep, add commands to install the necessary packages that the buildpack and built
application environment will need to stack/packages.txt and stack/prepare. Then add the buildpack Git URL to the file stack/buildpacks.txt

You'll then have to re-build.

## License

MIT
