def sign_in_and_play
  visit('/')
  fill_in(:player_1, with: 'Ulari')
  fill_in(:player_2, with: 'Thrash')
  click_button('Submit')
end