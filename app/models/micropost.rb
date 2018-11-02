class Micropost < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :okiniiris, class_name: 'Okiniiri', foreign_key: 'micropost_id'
  has_many :liked, through: :okiniiri, source: :user
end
