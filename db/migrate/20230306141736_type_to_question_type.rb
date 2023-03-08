class TypeToQuestionType < ActiveRecord::Migration[7.0]
  def change
    rename_column :test_questions, :type, :question_type
    add_column :test_questions, :description, :string
    add_column :test_questions, :no_of_question, :integer
    add_column :test_questions, :passing_marks, :integer
    add_column :test_questions, :full_marks, :integer
    add_column :test_questions, :image, :string
  end
end
