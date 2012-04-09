class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :user_id
      t.string :usa_id
      t.string :pic_name
      t.string :email
      t.string :user_name
      t.string :unit
      t.string :role
      t.string :tel1
      t.string :tel2
      t.string :tel3
      t.string :place
      t.text   :introduction
      t.text   :target

      t.timestamps
    end
    add_index :employees, :user_id, :unique => true
    add_index :employees, :usa_id,  :unique => true
    add_index :employees, :email,   :unique => true
  end
end
