#!/usr/bin/ruby
#any item annotated with <something> requires the user to change the values
#this script is only meant to be used in completely LEGAL applications 
require 'websocket-eventmachine-client'

EM.run do
  ws = WebSocket::EventMachine::Client.connect(uri: 'ws://<websocketTarget>')
  ws.onopen do
      ws.send("<valueYouWishToSend>")
  end
  ws.onmessage do |msg, type|
    puts msg
  end

end 
