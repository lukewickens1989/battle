require "./app.rb"

RSpec.feature "Attack", :type => :feature do
  scenario "player one attacks player two on button click" do
    sign_in_and_play
    click_button("Attack Player 2 🏹")
    expect(page).to have_content "Thrash attacked Ulari"
  end
end

RSpec.feature "Attack", :type => :feature do
  scenario "player one attacks player two on button click" do
    sign_in_and_play
    click_button("Attack Player 2 🏹")
    expect(page).to have_content 90
  end
end