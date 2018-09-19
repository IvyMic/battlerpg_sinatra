feature 'Attack Players' do
  scenario 'player 1 can attack player 2' do
    visit '/'
    sign_in_and_play
    click_button("attack")
    expect(page).to have_content("John attacked Dave")
  end
end