feature 'Attacking' do
  scenario 'shows player 2 attacked' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Fran attacked Chris'
  end

  scenario 'attack Player 2 and reduce 5 HP' do
    sign_in_and_play
    attack_and_confirm
    expect(page).to_not have_content 'Chris HP: 30'
    expect(page).to have_content 'Chris HP: 25'
  end

  scenario 'shows player 1 attacked' do
    sign_in_and_play
    attack_and_confirm
    click_button 'Attack'
    expect(page).to have_content 'Chris attacked Fran'
  end

  scenario 'attack Player 1 and reduce 5 HP' do
    sign_in_and_play
    attack_and_confirm
    attack_and_confirm
    expect(page).not_to have_content 'Fran HP: 30'
    expect(page).to have_content 'Fran HP: 25'
  end

end
