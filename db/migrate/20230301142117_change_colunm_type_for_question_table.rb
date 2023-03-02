class ChangeColunmTypeForQuestionTable < ActiveRecord::Migration[7.0]
  def change
    change_column(:questions, :language, :integer)
    change_column(:questions, :q_type, :integer)
    change_column(:questions, :q_level, :integer)
  end
end
