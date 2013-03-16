class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.string       :note
      t.string       :student_id
      t.integer      :asignature_id
      t.integer      :description_id
      t.integer      :percentage
      t.timestamps
    end
  end
end
