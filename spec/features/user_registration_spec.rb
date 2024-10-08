require 'rails_helper'

RSpec.feature "UserRegistration", type: :feature do
  scenario "creates a new user" do
    visit new_user_registration_path
    fill_in "Full Name", with: "John Doe"
    fill_in "Email", with: "john@example.com"
    fill_in "Password", with: "password"
    fill_in "Confirm Password", with: "password"
    click_button "Create Account"

    expect(page).to have_content("Welcome, John Doe! You have signed up successfully.")
  end

  it "keeps a user logged in after registering" do
    visit "/"

    click_on "Register as a User"

    full_name = "John Doe"
    email_address = "test@test.com"
    password = "test"

    fill_in "Full Name", with: full_name
    fill_in "Email Address", with: email_address
    fill_in "Password", with: password
    fill_in "Confirm Password", with: password

    click_on "Create Account"

    expect(page).to have_content("Welcome, #{full_name}! You have signed up successfully.")
  end
end
