App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    # Called when the subscription is ready for use on the server
    console.log "We're connected!"

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    messageTemplate = "<h2>User: #{data['name']}</h2><p>#{data['message']}</p>"

    $ ->
      $('#messages').append(messageTemplate)

  speak: (data) ->
    @perform 'speak', content: data
