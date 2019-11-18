class TasksController < ApplicationController
  before_action :authenticate

  def index
    @task = Task.new
    @tasks = current_user.tasks
  end

  def create
    current_user.tasks.create(task_params)
    redirect_to root_path
  end

private

  def task_params
    params.require(:task).permit(:title)
  end
end