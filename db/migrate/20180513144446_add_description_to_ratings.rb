class AddDescriptionToRatings < ActiveRecord::Migration[5.2]
  def change
    add_column :ratings, :description, :text
  end
end
