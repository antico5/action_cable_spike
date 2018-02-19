class User < ApplicationRecord
  has_many :followee_followings, class_name: 'Following', foreign_key: :follower_id, dependent: :destroy
  has_many :follower_followings, class_name: 'Following', foreign_key: :followee_id, dependent: :destroy

  has_many :followees, through: :followee_followings, class_name: "User"
  has_many :followers, through: :follower_followings, class_name: "User"

  has_many :tweets, dependent: :destroy

  def follow user
    followee_followings.create followee: user
  end
end
