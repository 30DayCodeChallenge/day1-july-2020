require_relative "../challenges/banker"

RSpec.describe "Banker Method" do
  it "returns True" do
    expect(fortune(100000, 1, 2000, 15, 1)).to be true
  end

  it "returns True" do
    expect(fortune(100000, 1, 10000, 10, 1)).to be true
  end

  it "returns False" do
    expect(fortune(100000, 1, 9185, 12, 1)).to be false
  end
end
