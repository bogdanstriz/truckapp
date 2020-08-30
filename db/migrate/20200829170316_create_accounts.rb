class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.float :total
      t.float :in
      t.float :out

      t.timestamps
    end
  end
end
