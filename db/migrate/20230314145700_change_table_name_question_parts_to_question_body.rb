class ChangeTableNameQuestionPartsToQuestionBody < ActiveRecord::Migration[7.0]
  def change
    rename_table :question_parts, :question_bodies
  end
end
