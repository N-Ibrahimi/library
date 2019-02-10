class CreateRecomments < ActiveRecord::Migration[5.2]
  def change
    create_table :recomments do |t|
      t.string :title 
      t.text :content 

      t.belongs_to :user
      t.belongs_to :comment

      t.timestamps
    end
  end
end
