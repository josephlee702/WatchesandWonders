class UserWatch < ApplicationRecord
  belongs_to :user
  belongs_to :watch
end
