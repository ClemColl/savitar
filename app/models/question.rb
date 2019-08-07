class Question < ApplicationRecord
  has_many :answers
  belongs_to :item

  def question_text
    self.text
  end
end
