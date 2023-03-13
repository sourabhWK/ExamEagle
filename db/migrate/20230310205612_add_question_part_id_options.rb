class AddQuestionPartIdOptions < ActiveRecord::Migration[7.0]
  def change
    add_column :options, :question_part_id, :integer
    rename_column :questions, :type, :question_type
  end
end
