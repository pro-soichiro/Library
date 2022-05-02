App.box = App.cable.subscriptions.create "BoxChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  # サーバーから受信した時の処理（受信内容を一覧に追加）
  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    alert data['content']
    # $('#boxes').append "<tr><td>#{data['request']}</td></tr>"

  # サーバーのアクションを呼び出す処理
  request: (content) ->
    @perform 'request', content: content

  # クライアント動作で、「サーバーのアクションを呼び出す処理」を実行
  $(document).on 'keypress','[data-item=box_request]',(event) ->
    if event.keyCode is 13 # Enterキーが押された場合。
      App.box.request event.target.value
      event.target.value = ''
      event.preventDefault()
