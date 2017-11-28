class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])
    
      if @Todo.update(todo_params)
        redirect_to todos_path
      else
        render :edit
      end
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    
       if @todo.save
         redirect_to todos_path
       else
         render :new
       end
     end
    
     private
    
       def pages_params
         params.require(:page).permit(:title, :author, :body)
  end

  def destroy
    Todo.find(params[:id]).destroy
    redirect_to todos_path
  end
end
