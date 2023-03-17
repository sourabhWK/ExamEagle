class CreateOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :options do |t|
      t.string :text
      t.boolean :correct
      t.integer :question_id

      t.timestamps
    end
    
  end
end
