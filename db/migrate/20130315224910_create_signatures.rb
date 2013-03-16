class CreateSignatures < ActiveRecord::Migration
  def change
    create_table :asignatures do |t|
      t.string       :name
      t.string       :course
      t.integer      :teacher_id
      t.timestamps
    end
  end
end
