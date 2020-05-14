class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: {in: 6..20}
  validates :fullname, presence: true, uniqueness: true, length: {in: 3..50}

  has_one_attached :avatar

  has_many :opinions, foreign_key:'author_id', class_name:'Opinion'

  has_many :follows

  has_many :followed_users, foreign_key: :follower_id, class_name: "Follow"
  has_many :followees, through: :followed_users, source: :user_followed
  has_many :following_users, foreign_key: :followee_id, class_name: "Follow"
  has_many :followers, through: :following_users, source: :user_following

  def is_following?(another_user)
    followees.include?(another_user)
  end

  def is_being_followed?(another_user)
    followers.include?(another_user)
  end
end
