class CreateStaffs < ActiveRecord::Migration[6.1]
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :role
    end
  end
end
