require 'rails_helper'

describe Task, "#completed?" do
  it "returnd true if completed_at is set" do
    task = Task.new(completed_at: Time.now)

    expect(task).to be_completed
  end
  it "returnd false if completed_at is not set" do
    task = Task.new

    expect(task).not_to be_completed
  end

end
