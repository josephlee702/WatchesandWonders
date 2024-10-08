class User < ApplicationRecord
  validates :full_name, presence: true
  validates :email_address, uniqueness: true, presence: true
  validates_presence_of :password_digest, require: true
end