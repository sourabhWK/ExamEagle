class Answers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.string :ans
      t.integer :question_id
      t.boolean :correct
      t.timestamps
    end
  end
end
