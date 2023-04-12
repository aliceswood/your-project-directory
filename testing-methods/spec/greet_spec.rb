require 'greet'

RSpec.describe "greet method" do
  it 'returns "Hello, Alice! when passed Alice' do
    greeting = greet('Alice')
    expect(greeting).to eq 'Hello, Alice!'
  end
end