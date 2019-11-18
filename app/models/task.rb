class Task < ApplicationRecord
  def completed?
    completed_at?
  end

  def complete!
    touch :completed_at
  end

  def incomplete!
    update_attribute(:completed_at, nil)
  end
end
