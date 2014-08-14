require 'shelljs/make'
lsc = require \LiveScript

target.all = ->
  console.log "Compiling LiveScript to JavaScript..."
  if not test \-e \bin then mkdir \bin
  script = lsc.compile (cat 'index.ls'), {+bare}
  ('#!/usr/bin/env node\n\n' + script).to './bin/nukem'