require 'counter'

RSpec.describe Counter do
  it 'returns the count so far' do
    counter = Counter.new
    counter.add(5)
    result = counter.report
    expect(result).to eq "Counted to #{5} so far."
  end
  it 'returns a count of zero' do
    counter = Counter.new
    expect(counter.report).to eq 'Counted to 0 so far.'
  end
  it 'returns a count of all numbers entered' do
    counter = Counter.new
    counter.add(3)
    counter.add(7)
    counter.add(5)
    expect(counter.report).to eq "Counted to #{3+7+5} so far."
  end
end