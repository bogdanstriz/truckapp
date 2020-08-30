class AddAccountToTruck < ActiveRecord::Migration[6.0]
  def change
    add_reference :trucks, :account, null: false, foreign_key: true
  end
end
