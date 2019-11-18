class Task < ApplicationRecord
  def completed?
    completed_at?
  end
end
