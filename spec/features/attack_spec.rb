require 'spec_helper'

feature "Attack" do
  scenario "attacking player 2" do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_content "Dylan attacked Ben"
  end
end
