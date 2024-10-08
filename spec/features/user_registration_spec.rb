require 'rails_helper'

RSpec.feature "UserRegistration", type: :feature do
  scenario "creates a new user" do
    visit new_user_registration_path
    fill_in "Full Name", with: "John Doe"
    fill_in "Email", with: "john@example.com"
    fill_in "Password", with: "password"
    fill_in "Confirm Password", with: "password"
    click_button "Create Account"

    expect(page).to have_content("Welcome! You have signed up successfully.")
  end
end
