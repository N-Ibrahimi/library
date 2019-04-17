class AddColumnAtEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :creator, :string
    add_column :events, :like , :string
  end
end
