require 'rails_helper'

describe User, type: :model do
  describe "validations" do
    it {should validate_presence_of(:full_name)}
    it {should validate_uniqueness_of(:email_address)}
    it {should validate_presence_of(:password_digest)}
  end
end

RSpec.describe User, type: :model do
  it "creates a new user with valid attributes" do
    user = User.new(full_name: "John Doe", email_address: "john@email.com", password_digest: "password")
    expect(user).to be_valid
  end
end
