class CreateRepairs < ActiveRecord::Migration[6.0]
  def change
    create_table :repairs do |t|
      t.string :type
      t.float :amount
      t.string :location
      t.date :date

      t.timestamps
    end
  end
end
