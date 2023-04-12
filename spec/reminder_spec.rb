require 'reminder'

RSpec.describe Reminder do
  it 'reminds the user to do a task' do
    reminder = Reminder.new("Alice")
    reminder.remind_me_to("Go to sleep")
    result = reminder.remind()
    expect(result).to eq "Go to sleep, Alice!"
  end
end
