class CompletionsController < ApplicationController
  def create
    task.touch :completed_at
    redirect_to root_path
  end

  private

  def task
    current_user.tasks.find(params[:task_id])
  end
end