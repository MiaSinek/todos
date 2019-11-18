require "rails_helper"

feature "user creates task" do
  scenario "successfully" do
    sign_in

    create_task "Buy a cat"

    expect(page).to display_task("Buy a cat")
  end
end