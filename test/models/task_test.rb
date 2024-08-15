require "test_helper"

class TaskTest < ActiveSupport::TestCase
  test "The task title can't be empty" do
    task = Task.new
    task.title = ""

    assert_not task.save
  end

  test "The task description can't be longer than 250 characteres" do
    task = Task.new
    task.title = "Feed my dogs"
    task.description = "a" * 300

    assert_not task.save
  end
end
