require 'shelljs/global'

target = './node_modules'

if not test \-e target
  console.log "No node_modules directory found. Exiting."
  process.exit 0

gounter = 0

walk = (path, counter) !->

  entries = ls \-A path

  for entry in entries
    if test \-d "#path/#entry"
      ++gounter
      mv "#path/#entry" "#path/#{++counter}"
      # console.log "D: #path/#entry -> #path/#{counter}"
      walk "#path/#{counter}" 0
    else
      ++gounter
      mv "#path/#entry" "#path/#{++counter}"
      # console.log "F: #path/#entry -> #path/#{counter}"

console.log "Nukem initiated. Scanning node_modules..."

walk target, 0

console.log "#gounter files found and renamed in node_modules. Deleting..."
rm \-rf target
console.log "node_modules has been removed."