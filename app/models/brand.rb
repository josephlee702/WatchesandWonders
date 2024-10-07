class Brand < ApplicationRecord
  has_many :watches
  has_one_attached :photo
end
