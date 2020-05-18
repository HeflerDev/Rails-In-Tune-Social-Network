class Opinion < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true, length: { in:11..320 }
  belongs_to :author, class_name:'User', foreign_key:'author_id'
end
