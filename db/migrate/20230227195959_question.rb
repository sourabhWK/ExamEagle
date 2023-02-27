class Question < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :language
      t.string :q_type
      t.string :q_level
      t.string :quest
      t.timestamps
    end
  end
end
