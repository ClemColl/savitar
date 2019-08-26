class Plan < ApplicationRecord
  belongs_to :answer

  def answer_text
    self.text
  end

end
