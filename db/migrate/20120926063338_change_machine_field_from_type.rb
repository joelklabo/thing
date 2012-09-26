class ChangeMachineFieldFromType < ActiveRecord::Migration
  def up
    rename_column :machines, :type, :kind
  end

  def down
  end
end
