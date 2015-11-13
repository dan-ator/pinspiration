class RenameJoinsTable < ActiveRecord::Migration
  def change
    rename_table :joins, :tags
  end
end
