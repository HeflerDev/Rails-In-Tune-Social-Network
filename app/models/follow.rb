class Follow < ApplicationRecord
  belongs_to :user_following, class_name: 'User', foreign_key: 'follower_id'
  belongs_to :user_followed, class_name: 'User', foreign_key: 'followee_id'
end
