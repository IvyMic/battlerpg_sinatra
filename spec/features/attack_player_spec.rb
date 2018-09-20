feature 'Attack Players' do
  scenario 'player 1 attack player 2' do
    sign_in_and_play
    click_button("attack")
    expect(page).to have_content("John attacked Dave")
  end
  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    attack_and_confirm
    expect(page).not_to have_content 'Dave: 100HP'
    expect(page).to have_content 'Dave: 90HP'
  end
end
