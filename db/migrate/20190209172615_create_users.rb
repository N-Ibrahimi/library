class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name 
      t.string :user_name 
      t.date :birth_date
      t.integer :phone
      t.string :mail
      t.string :address
      t.string :password_digest

      t.belongs_to :city
    end
  end
end
