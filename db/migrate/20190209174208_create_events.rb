class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title 
      t.date :date 
      t.text :description  

      t.belongs_to :city 

      t.timestamps
    end
  end
end
