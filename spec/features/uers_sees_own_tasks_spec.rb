require "rails_helper"

feature "User sees onw task" do
  scenario "doesn't see others' tasks" do
    Task.create title: "Buy a cat", email: "gagyi@mogyi.com"

    sign_in_as "someone@abc.com"

    expect(page).not_to have_css 'li.task', text: 'Buy a cat'
  end
end