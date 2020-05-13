class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: {in: 6..20}
  validates :fullname, presence: true, uniqueness: true, length: {in: 3..50}
  has_many :opinions, foreign_key:'user_id', class_name:'Opinion'

  
end
