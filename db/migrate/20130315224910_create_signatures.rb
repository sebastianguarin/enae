class CreateSignatures < ActiveRecord::Migration
  def change
    create_table :asignatures do |t|
      t.string       :name
      t.integer      :course_id 
      t.integer      :teacher_id
      t.timestamps
    end
  end
end
