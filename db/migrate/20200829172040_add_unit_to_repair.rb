class AddUnitToRepair < ActiveRecord::Migration[6.0]
  def change
    add_reference :repairs, :unit, null: false, foreign_key: true
  end
end
