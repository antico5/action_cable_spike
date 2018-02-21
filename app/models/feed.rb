class Feed
  def initialize user
    @user = user
  end

  def tweets
    Tweet.where(user: @user.followees).order(created_at: :desc)
  end
end
