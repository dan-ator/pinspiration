class CreateJoin < ActiveRecord::Migration
  def change
    create_table :joins do |t|
      t.references :pin, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
