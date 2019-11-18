class User
  def initialize(email)
    @current_email = email
  end

  def tasks
    Task.where(email: current_email)
  end

  def signed_in?
    current_email.present?
  end

  private
  attr_reader :current_email
end