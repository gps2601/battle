def sign_in_and_play
  visit('/')
  fill_in('player_one', with: 'Peter')
  fill_in('player_two', with: 'Paul')
  click_button('Submit')
end
