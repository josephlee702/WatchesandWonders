class User < ApplicationRecord
  has_many :user_watches
  has_many :watches, through: :user_watches

  validates :full_name, presence: true
  validates :email_address, uniqueness: true, presence: true
  validates_presence_of :password_digest, require: true

  has_secure_password
end