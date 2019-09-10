class TodosController < ApplicationController
    before_action :find_todo, only: [:show, :edit, :destroy]

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

    def edit; end

    def destroy
        @todo.destroy
        redirect_to todos_path
    end

    def update
        @todo = Todo.find(params[:id])
        @todo.update(todo_params)
        redirect_to todos_path
    end

    def find_todo
        @todo = Todo.find(params[:id])
    end

    private
    def todo_params
        params.require(:todo).permit(:description, :completed)
    end
end