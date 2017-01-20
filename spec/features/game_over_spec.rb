require 'spec_helper'

feature "Game over." do
  scenario "Player 1 kills player 2" do
    sign_in_and_play
    10.times { attack_and_confirm }
    click_button "Attack"
    expect(page).to have_content "Ben lost!"
  end
end
