class TasksController < ApplicationController
  def tasks
    @tasks = Task.all
  end

  def more
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def new
    @task = Task.new
  end
end
