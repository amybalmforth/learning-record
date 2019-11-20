require "scrabble"

describe Scrabble do

  it "expect empty string to return 0" do
    expect(subject.scrabble(0)).to eq 0
  end

  it "expect nil to return 0" do
    expect(subject.scrabble(nil)).to eq 0
  end

  it "expect a to return 1" do
    expect(subject.scrabble("a")).to eq 1
  end

  it "expect e to return 1" do
    expect(subject.scrabble("e")).to eq 1
  end

  it "expect d to return 2" do
    expect(subject.scrabble("d")).to eq 2
  end

  it "expect b to return 3" do
    expect(subject.scrabble("b")).to eq 3
  end

  it "expect f to return 4" do
    expect(subject.scrabble("f")).to eq 4
  end

  it "expect k to return 5" do
    expect(subject.scrabble("k")).to eq 5
  end

  it "expect j to return 8" do
    expect(subject.scrabble("j")).to eq 8
  end

  it "expect q to return 10" do
    expect(subject.scrabble("q")).to eq 10
  end

  it "expect street to return 6" do
    expect(subject.scrabble("street")).to eq 6
  end

  it "expect quirky to return 22" do
    expect(subject.scrabble("quirky")).to eq 22
  end



end
