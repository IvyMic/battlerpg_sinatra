def sign_in_and_play
  visit '/'
  fill_in('player1_name', with: 'John')
  fill_in('player2_name', with: 'Dave')
  click_button("submit")
end

def attack_and_confirm
  click_button('attack')
  click_button('End Turn')
end