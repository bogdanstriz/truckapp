class CreateTrailers < ActiveRecord::Migration[6.0]
  def change
    create_table :trailers do |t|
      t.string :make
      t.string :model
      t.string :type
      t.integer :year
      t.integer :mileage

      t.timestamps
    end
  end
end
