require "rails_helper"

feature "User completes task" do
  scenario "successfully" do
    sign_in

    create_task "Buy a cat"

    click_on "Done"

    expect(page).to display_completed_task("Buy a cat")
  end
end