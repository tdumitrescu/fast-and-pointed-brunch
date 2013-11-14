[![Build Status](https://travis-ci.org/tdumitrescu/fast-and-pointed-brunch.png?branch=master)](https://travis-ci.org/tdumitrescu/fast-and-pointed-brunch)

# Fast and Pointed Brunch

[Brunch](http://brunch.io/)-based project template with [AngularJS](http://angularjs.org) on the frontend and a lean [Express](http://expressjs.com) backend serving only JSON API endpoints. Largely a combination of [Angular Express Seed](https://github.com/btford/angular-express-seed) and [Angular Brunch Seed](https://github.com/scotch/angular-brunch-seed), with some explicit client/server separation and [CoffeeScript](http://coffeescript.org).

## Usage

Install in the current directory:
```sh
brunch new https://github.com/tdumitrescu/fast-and-pointed-brunch
```

Run:
```sh
npm start
```

## Architecture / Directories

The app-specific code is divided into two main directories:
- `client/`: the AngularJS code which runs in the browser, along with stylesheets and view templates. The entry point of the Angular app is declared and configured in `client/app.coffee`, and further app code lives by default in `client/scripts`.

- `server/`: the Express code which runs on the server with Node.js. The Express app is declared and configured in `server/server.coffee`. Code for JSON API actions lives in `server/api.coffee`.

The most significant particularity of this configuration is the enforced separation of (server-side) data and (client-side) presentation. The Express server does *no* view-rendering; it merely provides JSON API endpoints for the client. All HTML, CSS, and JS is pre-compiled by Brunch and served in static asset files. This includes all the Coffeescript, Jade, and Less files in `client/` as well as vendored asset dependencies installed by Bower (such as jQuery and the AngularJS framework code).

In both client and server directories, the file structure is set up for a simple single-resource app. A more expansive app would benefit from further separation into resource-based subdirectories and modules (for example, splitting `server/api.coffee` into `server/api/widgets.coffee` and `server/api/wombats.coffee`).

## Example App

A simple [blog](https://github.com/tdumitrescu/angular-express-coffee-blog) using this template, based on an [example](https://github.com/btford/angular-express-blog) by Brian Ford.

## Further documentation

See the more extensive documentation of the parent projects:
- [Angular Brunch Seed](https://github.com/scotch/angular-brunch-seed)
- [Angular Express Seed](https://github.com/btford/angular-express-seed)
