class QuestionPart < ActiveRecord::Migration[7.0]
  def change
    create_table :question_parts do |t|
      t.string :text
      
      t.timestamps
    end
  end
end
