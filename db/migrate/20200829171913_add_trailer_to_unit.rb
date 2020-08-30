class AddTrailerToUnit < ActiveRecord::Migration[6.0]
  def change
    add_reference :units, :trailer, null: false, foreign_key: true
  end
end
