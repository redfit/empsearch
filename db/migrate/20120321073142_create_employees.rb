class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :user_id
      t.string :usa_id
      t.string :pic_name
      t.string :email
      t.text   :user_name
      t.text   :unit
      t.text   :role
      t.text   :tel1
      t.text   :tel2
      t.text   :tel3
      t.text   :place
      t.text   :introduction
      t.text   :target

      t.timestamps
    end
    add_index :employees, :user_id, :unique => true
    add_index :employees, :usa_id,  :unique => true
    add_index :employees, :email,   :unique => true
  end
end
