class DropAnswers < ActiveRecord::Migration[7.0]
  def change
    drop_table :answers
  end
end
