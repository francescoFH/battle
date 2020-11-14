feature "Game over" do
  scenario "Player 2 loses when reaches 0 HP first" do
    sign_in_and_play
    10.times { attack_and_confirm }
    click_button "Attack"
    expect(page).to have_content "Chris loses!"
  end
end
