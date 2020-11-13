feature 'Attacking' do
  scenario 'shows player 2 attacked' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Fran attacked Chris'
  end

  scenario 'attack Player 2 and reduce 5 HP' do
    sign_in_and_play
    click_link 'Attack'
    click_button 'Play'
    expect(page).to_not have_content 'Chris HP: 30'
    expect(page).to have_content 'Chris HP: 25'
  end

  scenario 'shows player 1 attacked' do
    sign_in_and_play
    click_link 'Attack'
    click_button 'Play'
    click_link 'Attack'
    expect(page).to have_content 'Chris attacked Fran'
  end

  scenario 'reduce Player 1 HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    click_button 'Play'
    click_link 'Attack'
    click_button 'Play'
    expect(page).not_to have_content 'Fran HP: 30'
    expect(page).to have_content 'Fran HP: 25'
  end

end
