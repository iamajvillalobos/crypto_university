class CreateUniqueIndexOnProfessorsSubjects < ActiveRecord::Migration[5.2]
  def change
    add_index :professors_subjects, [:professor_id, :subject_id], :unique => true, :name => 'by_professor_and_subject'
  end
end
