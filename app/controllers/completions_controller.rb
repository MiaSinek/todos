class CompletionsController < ApplicationController
  def create
    current_user.tasks.find(params[:task_id]).touch :completed_at
    redirect_to root_path
  end
end