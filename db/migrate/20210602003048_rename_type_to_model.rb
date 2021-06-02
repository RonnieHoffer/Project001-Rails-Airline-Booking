class RenameTypeToModel < ActiveRecord::Migration[6.0]
  def change
    rename_column :aircrafts, :type, :model
  end
end
