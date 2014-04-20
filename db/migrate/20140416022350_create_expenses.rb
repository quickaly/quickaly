class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :category
      t.decimal :amount
      t.string :currency
      t.text :description
      t.timestamps
    end
  end
end
