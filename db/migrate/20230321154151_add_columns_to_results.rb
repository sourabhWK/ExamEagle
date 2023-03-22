class AddColumnsToResults < ActiveRecord::Migration[7.0]
  def change
    add_column :results, :question_body_id, :integer
    add_column :results, :option_id,:integer
    
  end
end
