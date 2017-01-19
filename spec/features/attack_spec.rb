require 'spec_helper'

feature "Attack" do
  scenario "attacking player 2" do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_content "Dylan attacked Ben"
  end
end

feature "Attack reduces player 2's HP." do
  scenario "Player 1 is attacking player 2" do
    sign_in_and_play
    click_link "Attack"
    click_link "OK"
    expect(page).not_to have_content "Ben: 60HP"
    expect(page).to have_content "Ben: 50HP"
  end
end
