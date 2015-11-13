class RenameTagsToCategories < ActiveRecord::Migration
  def change
    rename_table :tags, :categories
  end
end
