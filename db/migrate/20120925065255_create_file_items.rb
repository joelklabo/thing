class CreateFileItems < ActiveRecord::Migration
  def change
    create_table :file_items do |t|
      t.string :name
      t.references :user
      t.references :thing

      t.timestamps
    end
    add_index :file_items, :user_id
    add_index :file_items, :thing_id
  end
end
