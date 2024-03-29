require 'rails_helper'
require 'capybara/rails'

feature "CageFlix" do

  scenario "user can add a movie and see it on root" do
    visit '/'
    expect(page).to have_content "Cageflix"
    expect(page).to have_content "Netflix for Nic Cage movies"
    click_on "Add Movie"
    fill_in "Name", with: "The Wickerman"
    fill_in "Year", with: 2006
    fill_in "Synopsis", with: "A sheriff investigating the disappearance blah blah blah"
    click_on "Create Movie"
    expect(page).to have_content "The Wickerman"
    expect(page).to have_content "A sheriff investigating the disappearance blah blah blah"
  end

  scenario "user cannot add movie without name and year" do
    visit '/'
    click_on "Add Movie"
    click_on "Create Movie"
    expect(page).to have_content "Name can't be blank"
    expect(page).to have_content "Year can't be blank"
    expect(page).to have_content "Year is not a number"
  end

end