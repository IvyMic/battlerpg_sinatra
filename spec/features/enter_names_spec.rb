
feature 'Enter names' do
  scenario 'users fill out player one and player two names' do
    visit '/'
    sign_in_and_play
    expect(page).to have_content('John vs Dave')
  end
end