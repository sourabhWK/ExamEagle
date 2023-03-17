class AddQuestionBodyIdToOption < ActiveRecord::Migration[7.0]
  def change
    add_column :options, :question_body_id, :integer
  end
end
