class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.string :type
      t.string :name
      t.float :amount
      t.date :date
      t.boolean :outstanding

      t.timestamps
    end
  end
end
