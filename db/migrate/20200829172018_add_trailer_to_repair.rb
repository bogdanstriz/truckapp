class AddTrailerToRepair < ActiveRecord::Migration[6.0]
  def change
    add_reference :repairs, :trailer, null: false, foreign_key: true
  end
end
