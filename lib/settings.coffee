module.exports =
  config:
    syntaxVariant:
      title: 'Syntax Variant'
      description: 'Chose your theme'
      type: 'string'
      default: 'Raw'
      enum: [
        'Raw',
        'Vibrant'
      ]
  activate: (state) ->
    console.log "Activate"
    atom.themes.onDidChangeActiveThemes ->
      Config = require './config'
      Config.apply()
