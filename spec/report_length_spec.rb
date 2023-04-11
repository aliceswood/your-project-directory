require 'report_length'

RSpec.describe 'report_length method' do
  it 'returns the length of the string' do
    length = report_length('Alice')
    expect(length).to eq "This string was 5 characters long."
  end
  it 'returns the length of the string' do
    length = report_length('Alice Wood')
    expect(length).to eq "This string was 10 characters long."
  end
  it 'returns prompt message if no user input detected' do
    length = report_length('')
    expect(length).to eq "Please enter a string!"
  end
end