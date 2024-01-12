require_relative '../encrypt'

describe "#encrypt" do
  it 'should return a String' do
    expect(encrypt('')).to be_a(String)
    expect(encrypt('A')).to be_a(String)
    expect(encrypt('ABC')).to be_a(String)
  end

  it 'should return a "B" when given an "E"' do
    expect(encrypt('E')).to eq('B')
  end

  it 'should return a "X" when given an "A"' do
    expect(encrypt('A')).to eq('X')
  end

  it 'should return an encrpyted message for a long text' do
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    expect(actual).to eq(expected)
  end

  it 'should return an encrpyted message for a long text' do
    actual = encrypt("THE QUICK, BROWN FOX JUMPS OVER THE LAZY DOG!")
    expected = "QEB NRFZH, YOLTK CLU GRJMP LSBO QEB IXWV ALD!"
    expect(actual).to eq(expected)
  end
end
