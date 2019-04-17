class AddCreatorToEvents < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :user, foreign_key: true 
    remove_column :events, :creator, :string
  end
end
