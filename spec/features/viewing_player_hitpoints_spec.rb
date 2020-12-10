require "./app.rb"

RSpec.feature "Hitpoints", :type => :feature do
  scenario "Viewing other player hitpoints" do
    sign_in_and_play
    expect(page).to have_content( 100 && 100 )
  end
end