require "rails_helper"

feature "user creates task" do
  scenario "successfully" do
    sign_in

    fill_in "task[title]", with: "Buy a cat"
    click_on "Create"

    expect(page).to have_css 'li.task', text: 'Buy a cat'
  end
end