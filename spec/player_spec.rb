RSpec.describe Player do
  let(:player) { Player.new("Thrash") }
  it "expects player to have a name" do
    expect(player.name).to eq("Thrash")
  end

  it "expects player to have 100hp by default" do
    expect(player.hitpoints).to eq(100)
  end
end