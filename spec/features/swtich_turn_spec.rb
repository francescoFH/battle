feature "Swtiching_turns" do
  scenario "starting player" do
    sign_in_and_play
    expect(page).to have_content "Fran's turn!"
  end
  scenario "switch turn after attack" do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Play'
    expect(page).to_not have_content "Fran's turn!"
    expect(page).to have_content "Chris's turn!"
  end
end
