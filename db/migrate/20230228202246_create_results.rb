class CreateResults < ActiveRecord::Migration[7.0]
  def change
    create_table :results do |t|
      t.references :user, index: true
      t.integer :percent
      t.date :attempted
      t.boolean :pass

      t.timestamps
    end
    add_foreign_key :results, :users
  end
end
