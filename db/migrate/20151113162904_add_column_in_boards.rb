class AddColumnInBoards < ActiveRecord::Migration
  def change
    add_column :boards, :author, :string
  end
end
