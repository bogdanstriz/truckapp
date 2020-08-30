class CreateUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :units do |t|
      t.string :make
      t.string :model
      t.float :hours

      t.timestamps
    end
  end
end
