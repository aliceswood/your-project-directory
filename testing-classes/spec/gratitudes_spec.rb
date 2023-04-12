require 'gratitudes'

RSpec.describe Gratitudes do
  it 'returns the gratitudes list with one entry' do
    gratitude = Gratitudes.new 
    gratitude.add("family")
    expect(gratitude.format).to eq "Be grateful for: family"
  end
  it 'returns the gratitudes list with multiple entries' do
    gratitude = Gratitudes.new 
    gratitude.add("family")
    gratitude.add("friends")
    gratitude.add("adventure")
    expect(gratitude.format).to eq "Be grateful for: family, friends, adventure"
  end
end