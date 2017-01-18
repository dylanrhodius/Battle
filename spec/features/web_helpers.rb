def sign_in_and_play
  visit('/')
  fill_in :player_1_name, :with => "Dylan"
  fill_in :player_2_name, :with => "Ben"
  click_button "submit"
end
