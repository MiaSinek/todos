module Features
  def sign_in_as(email = "person@abc.com")
    visit root_path
    fill_in "session[email]", with: email
    click_on "Sign in"
  end

  alias :sign_in :sign_in_as

end