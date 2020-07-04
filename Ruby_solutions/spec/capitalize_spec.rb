require_relative "../challenges/capitalize"

RSpec.describe "Capitalize" do
  it "capitalizes provided indexes" do
    expect(capital("abcdef", [1, 2, 5])).to eq "aBCdeF"
  end

  it "ignores non-existent indexes" do
    expect(capital("abcdef", [1, 2, 5, 100])).to eq "aBCdeF"
  end
end
