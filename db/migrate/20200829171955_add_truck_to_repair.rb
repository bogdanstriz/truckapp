class AddTruckToRepair < ActiveRecord::Migration[6.0]
  def change
    add_reference :repairs, :truck, null: false, foreign_key: true
  end
end
