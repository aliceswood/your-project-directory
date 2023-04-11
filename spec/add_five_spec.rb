require 'add_five'

RSpec.describe "add five method" do
  it "adss 5 to 3 to return 8" do
    result = add_five(3)
    expect(result).to eq 8
  end
end
