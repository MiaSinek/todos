require "rails_helper"

feature "User completes task" do
  scenario "successfully" do
    sign_in

    fill_in "task[title]", with: "Buy a cat"
    click_on "Create"
    click_on "Done"

    expect(page).to have_css 'li.task.completed', text: 'Buy a cat'
  end
end