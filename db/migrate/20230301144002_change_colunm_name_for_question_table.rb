class ChangeColunmNameForQuestionTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :questions
  end
end
