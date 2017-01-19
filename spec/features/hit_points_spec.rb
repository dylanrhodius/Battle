require 'spec_helper'

feature "View HP" do
  scenario "viewing Player 2 HP" do
    sign_in_and_play
    expect(page).to have_content "Ben: 60HP"
  end
  scenario "viewing Player 1 HP" do
    sign_in_and_play
    expect(page).to have_content "Dylan: 60HP"
  end
end
