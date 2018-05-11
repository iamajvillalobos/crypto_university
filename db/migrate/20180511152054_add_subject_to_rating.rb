class AddSubjectToRating < ActiveRecord::Migration[5.2]
  def change
    add_column :ratings, :subject_id, :integer, index: true
  end
end
