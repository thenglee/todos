class TodosController < ApplicationController
  def new
    @todo = Todo.new
  end

  def index
    @todos = Todo.all
  end

  def create
    @todo = Todo.create(todo_params)
    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end
end
