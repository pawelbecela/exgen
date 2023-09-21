require "test_helper"

class ExerciseTest < ActiveSupport::TestCase
  test "exercise attributes must not be empty" do
    exercise = Exercise.new
    assert exercise.invalid?
    assert exercise.errors[:name].any?
    assert exercise.errors[:pattern].any?
  end
end
