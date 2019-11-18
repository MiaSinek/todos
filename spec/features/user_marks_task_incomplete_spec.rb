require "rails_helper"

feature "User marks completed task as incomplete" do
  scenario "successfully" do
    sign_in

    create_task "Buy a cat"

    click_on "Done"

    click_on "Incomplete"

    expect(page).to display_task("Buy a cat")
    expect(page).not_to display_completed_task("Buy a cat")
  end
end