class AddTruckToTrailer < ActiveRecord::Migration[6.0]
  def change
    add_reference :trailers, :truck, null: false, foreign_key: true
  end
end
