class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string       :name
      t.string       :last_names
      t.timestamps
    end
  end
end
