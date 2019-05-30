feature 'testing form' do
  it 'can submit form' do
    sign_in_and_play
    expect(page).to have_content('Peter vs Paul')
  end
end

feature 'view hit points' do
  scenario 'see player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content('Paul has 100 hit points.')
  end

  scenario 'see player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content('Peter has 100 hit points.')
  end
end

feature 'attack player 2' do
  scenario 'can get confirmation'  do
    sign_in_and_play
    click_link('Hit player 2')

    expect(page).to have_content('Peter hit Paul')
  end

  scenario 'can reduce hit points'  do
    sign_in_and_play
    click_link('Hit player 2')
    click_link('OK')

    expect(page).to have_content('Paul has 90 hit points.')
  end
end

feature 'switch turns' do
  scenario 'can display initial players turn e.g. player 1' do
    sign_in_and_play

    expect(page).to have_content("Peter's turn")
    expect(page).to_not have_content("Paul's turn")
  end

  scenario 'can display second players turn e.g. player 2' do
    sign_in_and_play
    click_link('Hit player 2')
    click_link('OK')

    expect(page).not_to have_content("Peter's turn")
    expect(page).to have_content("Paul's turn")
  end
end
