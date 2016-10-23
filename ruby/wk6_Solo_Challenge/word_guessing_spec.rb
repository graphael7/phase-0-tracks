require_relative 'word_guessing'


describe WordGuess do
  let(:gib) {WordGuess.new}

  it "draws the appropriate lines" do
    expect(gib.draw_line).to eq "_ _ _ _ "
  end

  it "Check the guessed letter" do
    expect(gib.check_letter("c")).to eq true
  end

  it "update lines with the correct letter" do
    gib.draw_line
    expect(gib.update_letter("c")).to eq "_ _ c _ " 
  end

end