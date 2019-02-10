class CreateLibraryLists < ActiveRecord::Migration[5.2]
  def change
    create_table :library_lists do |t|
      t.string :name 
      t.string :address

      t.belongs_to :city
      
      t.timestamps
      
    end
  end
end