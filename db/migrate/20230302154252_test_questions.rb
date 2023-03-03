class TestQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :test_questions do |t|
      t.string :text
      t.references :language, index: true
      t.references :topic, index: true
      t.integer :type
      t.integer :difficulty

      t.timestamps
    end
  end
end
