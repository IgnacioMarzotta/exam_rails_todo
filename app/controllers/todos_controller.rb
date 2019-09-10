class TodosController < ApplicationController
    before_action :find_todo, only: [:show]

    def index
        @todos = Todo.all
    end

    def new
        @todo = Todo.new
    end

    def create
        @todo = Todo.new(todo_params)
        @todo.save
        redirect_to todos_path
    end

    def show; end

    def find_todo
        @todo = Todo.find(params[:id])
    end

    private
    def todo_params
        params.require(:todo).permit(:description, :completed)
    end
end