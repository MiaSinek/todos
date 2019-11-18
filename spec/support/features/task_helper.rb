module Features
  def create_task(title)
    fill_in "task[title]", with: title
    click_on "Create"
  end

  def display_task(title)
    have_css 'li.task', text: title
  end

  def display_completed_task(title)
    have_css 'li.task.completed', text: title
  end
end