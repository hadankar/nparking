class RemoveFieldNameFromTableName < ActiveRecord::Migration
  def down
    remove_column :places, :alias, :datatype
  end
end
