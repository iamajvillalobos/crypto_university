class AddImageUrls < ActiveRecord::Migration[5.2]
  def change
    add_column :professors, :image_url, :string
    add_column :subjects, :image_url, :string
  end
end
