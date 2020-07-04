require_relative "../challenges/duplicates"

RSpec.describe "Duplicates Method" do
  it "should return 0" do
    expect(removeDuplicates("abcde")).to eq 0
  end

  it "should return 2" do
    expect(removeDuplicates("aabbcde")).to eq 2
  end

  it "Should return 1" do
    expect(removeDuplicates("indivisibility")).to eq 1
  end

  it "Should return 1" do
    expect(removeDuplicates("aA11")).to eq 1
  end

  it "Should return 2" do
    expect(removeDuplicates("ABBA")).to eq 2
  end
end
