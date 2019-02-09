class CreateRecomments < ActiveRecord::Migration[5.2]
  def change
    create_table :recomments do |t|

      t.timestamps
    end
  end
end
