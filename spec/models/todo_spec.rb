require 'rails_helper'

RSpec.describe Todo, type: :model do
  describe '#completed?' do
    it 'returns true if completed_at is set' do
      todo = Todo.new(completed_at: Time.current)

      expect(todo).to be_completed
    end

    it 'returns false if completed at is nil' do
      todo = Todo.new(completed_at: nil)

      expect(todo).not_to be_completed
    end
  end

  describe '#complete!' do
    it 'update completed_at' do
      todo = Todo.create!(completed_at: nil)

      todo.complete!

      expect(todo).to be_completed
    end
  end

  describe '#mark_incomplete!' do
    it 'sets completed_at to nil' do
      todo = Todo.create!(completed_at: Time.current)

      todo.mark_incomplete!

      expect(todo).not_to be_completed
    end
  end
end
