require "./app.rb"

RSpec.feature "Username", :type => :feature do
  scenario "User inputs name" do
    sign_in_and_play
    expect(page).to have_content 'Let battle commence!'
  end
end