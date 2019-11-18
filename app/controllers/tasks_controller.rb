class TasksController < ApplicationController
  before_action :authenticate

  def index
    @task = Task.new
    @tasks = Task.where email: current_email
  end

  def create
    Task.create task_params.merge(email: current_email)

    redirect_to root_path
  end

private

  def task_params
    params.require(:task).permit(:title)
  end
end