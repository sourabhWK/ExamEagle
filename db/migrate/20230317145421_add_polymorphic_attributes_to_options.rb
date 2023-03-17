class AddPolymorphicAttributesToOptions < ActiveRecord::Migration[7.0]
  def change
    add_column :options, :optionable_type, :string 
    add_column :options, :optionable_id, :integer 
    remove_column :options, :question_id, :integer
    remove_column :options, :question_body_id, :integer
  end
end
