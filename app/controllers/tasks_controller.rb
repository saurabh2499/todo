class TasksController < ApplicationController
	

	def index
		@tasks = Task.order(priority: :desc, duedate: :asc)
	end
	def new
		@task= Task.new
	end

	def create
		@task = Task.new(task_params)
 
  		if @task.save
  			redirect_to @task
  		else
  			render 'new'
  		end
	end

	def update
  		@article = Article.find(params[:id])
 
	    if @article.update(article_params)
    		redirect_to @article
  		else
    		render 'edit'
  		end
	end

	def show
		@task = Task.find(params[:id])
	end

	def edit
		@task = Task.find(params[:id])
	end


	private
  		def task_params
    		params.require(:task).permit(:title, :text, :priority, :duedate)
  		end
end
