class ApplicationController < ActionController::Base
  def authenticate
    if !signed_in?
      redirect_to new_session_path
    end
  end

  def signed_in?
    current_user.signed_in?
  end

  def sign_in_as(email)
    session[:email] = email
  end

  def current_user
    User.new(session[:email])
  end
end
