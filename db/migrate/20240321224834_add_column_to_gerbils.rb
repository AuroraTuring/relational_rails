class AddColumnToGerbils < ActiveRecord::Migration[7.1]
  def change
    add_reference :gerbils, :competition, null: false, foreign_key: true
  end
end
