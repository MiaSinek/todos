require 'rails_helper'

describe Task, "#completed?" do
  it "returns true if completed_at is set" do
    task = Task.new(completed_at: Time.now)

    expect(task).to be_completed
  end
  it "returnd false if completed_at is not set" do
    task = Task.new(completed_at: nil)

    expect(task).not_to be_completed
  end
end

describe Task, "#complete!" do
  it "sets completed_at" do
    task = Task.create(completed_at: nil)
    task.complete!

    task.reload

    expect(task).to be_completed
  end
end

describe Task, "#incomplete!" do
  it "sets completed_at to nil" do
    task = Task.create(completed_at: nil)
    task.complete!
    task.incomplete!
    task.reload

    expect(task).not_to be_completed
  end
end
