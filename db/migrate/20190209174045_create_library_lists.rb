class CreateLibraryLists < ActiveRecord::Migration[5.2]
  def change
    create_table :library_lists do |t|

      t.timestamps
    end
  end
end
