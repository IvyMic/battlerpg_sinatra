feature 'Losing a battle' do
  scenario 'Shows a lose message when player hp reaches 0' do
    sign_in_and_play
    18.times { attack_and_confirm }
    click_button('attack')
    expect(page).not_to have_content("Dave's turn")
    expect(page).not_to have_content("John's turn")
    expect(page).to have_content("Dave has lost!")
  end
  
end