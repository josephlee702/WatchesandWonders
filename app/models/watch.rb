class Watch < ApplicationRecord
  belongs_to :brand
  has_many :user_watches
  has_many :users, through: :user_watches
  has_one_attached :photo
end
