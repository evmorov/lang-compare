# other-file-to-import.coffee
# module.exports =
# class Import
#   constructor: ->
#     console.log 'I am imported!'

Import = require './other-file-to-import'
new Import()
# I am imported!
