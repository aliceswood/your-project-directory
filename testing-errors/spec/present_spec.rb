require 'present'

RSpec.describe Present do
  it "wraps and unwraps a value" do
    present = Present.new
    present.wrap('toy')
    expect(present.unwrap).to eq 'toy'
  end
  it "fails if we unwrap without wrapping first" do
    present = Present.new
    expect { present.unwrap }.to raise_error "No contents have been wrapped."
  end
  it "fails if we try to wrap when a gift is already wrapped" do
    present = Present.new
    present.wrap('toy')
    expect { present.wrap('toy2') }.to raise_error "A gift has already been wrapped."
    expect(present.unwrap).to eq 'toy'
  end
end