require 'reminder'

RSpec.describe Reminder do
  context 'when no task is set' do
    it 'fails do' do
      reminder = Reminder.new('Alice')
      expect { reminder.remind }.to raise_error 'No reminder set!'
    end
  end
end
