class ChangeTagsTable < ActiveRecord::Migration
  def change
    rename_column :tags, :tag_id, :category_id
  end
end
