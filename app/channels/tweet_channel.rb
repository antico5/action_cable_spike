class TweetChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'tweets'
    ActionCable.server.broadcast 'tweets', message: "#{current_user.name} connected"
  end
end
