class CreateCompetitions < ActiveRecord::Migration[7.1]
  def change
    create_table :competitions do |t|
      t.string :name
      t.string :location
      t.string :date
      t.boolean :open_to_the_public
      t.integer :prize_money

      t.timestamps
    end
  end
end
