require 'check_codeword'

RSpec.describe 'check_codeword method' do
  it 'returns correct message when given the correct codeword' do
    response = check_codeword('horse')
    expect(response).to eq "Correct! Come in."
  end
  it 'returns a close message when given a codeword that is close' do
    response = check_codeword('hope')
    expect(response).to eq "Close, but nope."
  end
  it 'returns a close message when given a codeword that starts with the right letter' do
    response = check_codeword('how')
    expect(response).to eq "WRONG!"
  end
  it 'returns a close message when given a codeword that ends in the right letter' do
    response = check_codeword('bite')
    expect(response).to eq "WRONG!"
  end
  it 'returns a wrong message when given the wrong codeword' do
    response = check_codeword('dog')
    expect(response).to eq "WRONG!"
  end
end

