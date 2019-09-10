class TodosController < ApplicationController
    before_action :find_todo, only: [:show, :edit, :destroy, :complete]

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

    def find_todo
        @todo = Todo.find(params[:id])
    end

    def list
        @unfinished_todos = Todo.where(completed: false)
        @completed_todos = Todo.where(completed: true)
    end

    def update
        @todo = Todo.find(params[:id])
        @todo.update(todo_params)
        redirect_to todos_path
    end

    def complete
        @todo = Todo.find(params[:id])
        @todo.completed = true
        @todo.save
        redirect_to todos_path
    end


    private
    def todo_params
        params.require(:todo).permit(:description, :completed)
    end
end