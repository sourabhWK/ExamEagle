class AddQuestionPartIdOptions < ActiveRecord::Migration[7.0]
  def change
    add_column :question_parts, :test_question_id, :integer
    # add_reference :question_parts, :test_question, null: false, foreign_key: true
    rename_column :questions, :type, :question_type
  end
end
