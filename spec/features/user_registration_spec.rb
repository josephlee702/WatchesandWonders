require 'rails_helper'

RSpec.feature "UserRegistration", type: :feature do
  scenario "creates a new user" do
    visit new_user_registration_path
    fill_in "Full name", with: "John Doe"
    fill_in "Email", with: "john@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"

    expect(page).to have_content("Welcome! You have signed up successfully.")
  end
end
