class Answer < ApplicationRecord
  has_many :plans
  belongs_to :question
end
