class AddForeignKeyToAnswers < ActiveRecord::Migration[5.2]
  def change
    add_reference :answers, :questionnaire, foreign_key: true
  end
end
