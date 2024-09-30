class Watch < ApplicationRecord
  belongs_to :brand
  has_one_attached :photo
end
