class Employee < ActiveRecord::Base
  searchable do
    text :usa_id, :email, :user_name, :unit, :role,
      :tel1, :tel2, :tel3, :place, :introduction, :target
    string :unit
    string :usa_id
  end
end
