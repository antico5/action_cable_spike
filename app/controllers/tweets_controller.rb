class TweetsController < ApplicationController
  def create
    tweet = current_user.tweets.create tweet_params
    TweetChannel.broadcast_to current_user, sender: current_user.name, message: tweet.text
    redirect_to current_user
  end

  private

  def tweet_params
    params.require(:tweet).permit(:text)
  end
end
