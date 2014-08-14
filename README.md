# Nukem

A small command-line utility to reliably delete `node_modules` on Windows, in case you're having troubles with [long paths](https://github.com/joyent/node/issues/6960).

### Installation

1. Make sure you have [node.js](http://nodejs.org) installed.
2. Run `npm install -g nukem` from the command line.

### Usage

Run `nukem` in any directory that has `node_modules` in it, and *nukem* will get rid of it. There is no configuration, confirmation or anything else - you just run the command, and end up with no `node_modules` as a result. If `node_modules` isn't found, *nukem* will exit without doing anything.