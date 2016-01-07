# Be sure to restart your server when you modify this file. Action Cable runs in an EventMachine loop that does not support auto reloading.
class MessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'message_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def send_message(data)
    ActionCable.server.broadcast 'message_channel', message: data['message']
  end
end