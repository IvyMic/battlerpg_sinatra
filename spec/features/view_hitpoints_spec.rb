feature 'View hitpoints' do
  scenario "users can view p2's hitpoints" do
    sign_in_and_play
    expect(page).to have_content("Dave: 100HP")
  end
end
