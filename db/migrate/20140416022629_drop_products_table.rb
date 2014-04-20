class DropProductsTable < ActiveRecord::Migration
  def up
    drop_table :expenses
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end