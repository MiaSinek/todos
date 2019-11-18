class CompletionsController < ApplicationController
  def create
    task.complete!
    redirect_to root_path
  end

  private

  def task
    current_user.tasks.find(params[:task_id])
  end
end