class CreateFileItems < ActiveRecord::Migration
  def change
    create_table :file_items do |t|
      t.string :location
      t.references :thing

      t.timestamps
    end
    add_index :file_items, :thing_id
  end
end
