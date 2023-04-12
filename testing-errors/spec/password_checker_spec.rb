require 'password_checker'

RSpec.describe PasswordChecker do
  it 'returns true for passwords 8 characters or more' do
    password = PasswordChecker.new
    password.check('elephant')
    expect(password.check('elephant')).to eq true
    expect(password.check('hippopotamus')).to eq true
  end
  it 'returns fail message for passwords less than 8 characters' do
    password = PasswordChecker.new
    expect { password.check('cat') }.to raise_error "Invailid password, must be 8+ characters."
  end
end