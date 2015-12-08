AboutURI = 'atom://about'

module.exports =
  subscription: null

  activate: ->
    @subscription = atom.workspace.addOpener (uriToOpen) ->
      if uriToOpen is AboutURI
        createAboutView = require './about-view'
        createAboutView(uri: uriToOpen)

  deactivate: ->
    @subscription.dispose()
