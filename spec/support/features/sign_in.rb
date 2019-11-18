module Features
  def sign_in
    visit root_path
    fill_in "session[email]", with: "person@abc.com"
    click_on "Sign in"
  end
end