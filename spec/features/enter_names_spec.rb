require 'spec_helper'

feature "Enter names" do
  scenario "submitting names" do
    visit('/')
    fill_in :player_1_name, :with => "Dylan"
    fill_in :player_2_name, :with => "Ben"
    click_button "submit"
    expect(page).to have_content "Dylan vs. Ben"
  end
end

feature "View HP" do
  scenario "viewing opponent's HP" do
    visit('/')
    fill_in :player_1_name, :with => "Dylan"
    fill_in :player_2_name, :with => "Ben"
    click_button "submit"
    expect(page).to have_content ": 60HP"
  end
end
