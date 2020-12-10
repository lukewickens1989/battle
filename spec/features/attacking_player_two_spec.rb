require "./app.rb"

RSpec.feature "Attack", :type => :feature do
  scenario "player 2 hitpoints reduced by 10" do
    sign_in_and_play
    click_button("Attack Player 2 🏹")
    expect(page).to have_content "Ulari attacked Thrash"
  end
end