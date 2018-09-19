feature 'View hitpoints' do
  scenario "users can view each other's hitpoints" do
    visit '/'
    sign_in_and_play
    expect(page).to have_content("John's hitpoints: 100")
    expect(page).to have_content("Dave's hitpoints: 100")
  end
end
