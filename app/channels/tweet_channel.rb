class TweetChannel < ApplicationCable::Channel
  def subscribed
    current_user.followees.each do |followee|
      stream_for followee
    end
    # self.class.broadcast_to current_user, 'hello'
    # ActionCable.server.broadcast 'tweets', message: "#{current_user.name} connected"
  end
end
