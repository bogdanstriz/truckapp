class AddAccountToTrailer < ActiveRecord::Migration[6.0]
  def change
    add_reference :trailers, :account, null: false, foreign_key: true
  end
end
