

feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Enter Names'
  end
end

feature 'Enable players to enter names' do
  scenario 'testing name input from form' do
    sign_in_and_play
    expect(page).to have_content "Welcome to Battle!"
  end

end

feature 'hit points' do
  scenario 'can display player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content "Bob vs. Dave HP POINTS: 60"
  end

  scenario 'can display player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content "Bob vs. Dave HP POINTS: 60: HP POINTS 60HP"

  end
end


feature 'Attacking' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content "Dave HB points = 50"
  end
end

feature 'Switching turns' do
  scenario 'seeing the current turn' do
    sign_in_and_play
    expect(page).to have_content "Bob's turn"
  end

  scenario 'after player 1 attacks' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content "Bob's turn"
    expect(page).to have_content "Dave's turn"
  end
end
