$ ->
  textArea = $('textarea[name="message"]')

  $('#submitMessage').click ->
    App.chat.speak textArea.val()
    textArea.val('')

  $('textarea[name="message"]').keydown (event) ->
    if event.keyCode is 13
      App.chat.speak event.target.value
      event.target.value = ''
      event.preventDefault()
