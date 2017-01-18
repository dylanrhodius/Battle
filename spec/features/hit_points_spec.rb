require 'spec_helper'

feature "View HP" do
  scenario "viewing opponent's HP" do
    sign_in_and_play
    expect(page).to have_content ": 60HP"
  end
end
