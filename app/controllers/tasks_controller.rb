class TasksController < ApplicationController
	

	def index
		@tasks = Task.all
	end
	def new
	end

	def create
		@task = Task.new(task_params)
 
  		@task.save
  		redirect_to @task
	end

	def show
		@task = Task.find(params[:id])
	end


	private
  		def task_params
    		params.require(:task).permit(:title, :text, :priority, :duedate)
  		end
end
