class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: {in: 6..20}
  validates :fullname, presence: true, uniqueness: true, length: {in: 3..50}
  has_many :opinions
end
