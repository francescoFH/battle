feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    visit("/")
    fill_in :player_1_name, with: 'Fran'
    fill_in :player_2_name, with: 'Chris'
    click_button 'Submit'
    expect(page).to have_content 'Chris HP: 30'
  end
end
