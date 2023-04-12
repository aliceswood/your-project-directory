require 'string_builder'

RSpec.describe StringBuilder do
  it 'returns the inputted string' do
    string = StringBuilder.new
    string.add('Hello')
    expect(string.output).to eq 'Hello'
  end
  it 'returns the length of the string' do
    string = StringBuilder.new
    string.add('Hello')
    expect(string.size).to eq 5
  end
  it 'returns the joined strings that are inputted' do
    string = StringBuilder.new
    string.add('Hello')
    string.add(' Alice')
    expect(string.output).to eq 'Hello Alice'
  end
end