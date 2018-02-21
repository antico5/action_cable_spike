class TweetsController < ApplicationController
  def create
    tweet = current_user.tweets.create tweet_params
    TweetChannel.broadcast_to current_user, html: render_to_string(tweet)
    redirect_to current_user
  end

  private

  def tweet_params
    params.require(:tweet).permit(:text)
  end
end
