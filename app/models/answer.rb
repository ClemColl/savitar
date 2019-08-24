class Answer < ApplicationRecord
  has_many :plans
  belongs_to :question
  belongs_to :questionnaire, optional: true

  def answer_text
    self.text
  end
end
