feature 'Attacking' do
  scenario 'attack Player 2 and reduce 5 HP' do
    sign_in_and_play
    click_link 'Attack'
    click_button 'Play'
    expect(page).to_not have_content 'Chris HP: 30'
    expect(page).to have_content 'Chris HP: 25'
  end
end
