RSpec.describe Player do
  let(:thrash) { Player.new("Thrash") }
  let(:ulari) { Player.new("Ulari") }

  it "expects player to have a name" do
    expect(thrash.name).to eq("Thrash")
  end

  it "expects player to have 100hp by default" do
    expect(thrash.hitpoints).to eq(100)
  end

  describe '#attack' do
    it "should damage the player" do
      expect(ulari).to respond_to(:attack)
    end
  end

  describe '#receive_damage' do
    it "should take 10hp from the players hitpoints" do
      expect { thrash.attack(ulari) }.to change { ulari.hitpoints }.by(-10)
    end
  end

end