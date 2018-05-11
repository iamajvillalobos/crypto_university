class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :amount
      t.belongs_to :professor
      t.timestamps
    end
  end
end
