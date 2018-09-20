feature 'Switching players' do
  scenario 'players switch turns' do
    sign_in_and_play
    attack_and_confirm
    expect(page).to have_content("Dave's turn")
  end
  scenario 'after player 1 attacks' do
    sign_in_and_play
    attack_and_confirm
    attack_and_confirm
    expect(page).not_to have_content("Dave's turn")
    expect(page).to have_content("John's turn")
  end
end