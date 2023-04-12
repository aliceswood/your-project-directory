class Reminder
  def initialize(name)
    @name = name
  end

  def remind_me_to(task)
    @task = task
  end

  def remind
    raise 'No reminder set!' if @task.nil?

    "#{£task}, #{name}!"
  end
end
