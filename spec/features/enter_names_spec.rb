
feature 'Enter names' do
  scenario 'users fill out player one and player two names' do
    visit '/'
    fill_in('player1_name', with: 'John')
    fill_in('player2_name', with: 'Dave')
    click_button("submit")
    expect(page).to have_content('John vs Dave')
  end
end