class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string       :login
      t.string       :password_digest
      t.integer      :facebook_id
      t.string       :access_token
      t.string       :rol_type
      t.integer      :rol_id
      t.string       :email
      t.timestamps
    end
  end
end
