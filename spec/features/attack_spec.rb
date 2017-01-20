require 'spec_helper'

feature "Attack" do
  scenario "attacking player 2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Dylan attacked Ben"
  end
  scenario "attacking player 1" do
    sign_in_and_play
    attack_and_confirm
    click_button "Attack"
    expect(page).to have_content "Ben attacked Dylan"
  end
end

feature "Attack reduces player 2's HP." do
  scenario "Player 1 is attacking player 2" do
    sign_in_and_play
    attack_and_confirm
    expect(page).not_to have_content "Ben: 60HP"
    expect(page).to have_content "Ben: 50HP"
  end
end

feature "Attack reduces player 1's HP." do
  scenario "Player 2 attacking player 1." do
    sign_in_and_play
    attack_and_confirm
    attack_and_confirm
    expect(page).not_to have_content "Dylan: 60HP"
    expect(page).to have_content "Dylan: 50HP"
  end
end
