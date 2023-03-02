class CreateOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :options do |t|
      t.string :text
      t.boolean :correct
      t.references :question, index: true

      t.timestamps
    end
    add_foreign_key :options, :questions
  end
end
