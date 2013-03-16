class CreateGradeDescriptions < ActiveRecord::Migration
  def change
    create_table :grade_descriptions do |t|
      t.string       :description
      t.string       :answer
      t.timestamps
    end
  end
end
