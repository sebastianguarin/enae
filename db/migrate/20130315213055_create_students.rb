class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string       :name
      t.string       :last_names
      t.integer      :course_id
      t.timestamps
    end
  end
end
