require 'test_helper'

class TodoTest < ActiveSupport::TestCase
  test "is not valid without a name" do
    new_todo = Todo.new

    refute new_todo.valid?
    assert_includes new_todo.errors.keys, :name
  end

  test "can save a Todo with a name" do
    assert Todo.create(name: 'random')
  end

  test "cannot save a second Todo with the same name" do
    new_todo = Todo.new(name: Todo.last.name)

    refute new_todo.valid?
    assert_includes new_todo.errors.keys, :name
  end
end
