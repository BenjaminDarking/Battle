def sign_in_and_play
  visit('/')
  fill_in 'player_1', with: 'Bob'
  fill_in 'player_2', with: 'Dave'
  click_button 'Submit'
end

def player_loses
  click_button 'Attack!'
  click_button 'OK!'
end
