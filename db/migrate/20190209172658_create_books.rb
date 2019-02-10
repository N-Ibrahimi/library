class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.integer :isbn
      t.string :title
      t.string :author
      t.string :co_author
      t.string :lable
      t.integer :editon 
      t.integer :year
      t.string :publisher
      t.integer :volume
      
    
      t.belongs_to :library 
      t.belongs_to :category 
      t.belongs_to :tag

      t.timestamps
    end
  end
end
