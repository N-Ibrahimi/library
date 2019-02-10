class CreateLoans < ActiveRecord::Migration[5.2]
  def change
    create_table :loans do |t|
      t.date :borrow_date
      t.date :return_date

      t.belongs_to :user, index: true 
      t.belongs_to :book, index: true 

      t.timestamps
    end
  end
end
