class ChangeDescriptionToText < ActiveRecord::Migration
  def up
   change_column :photos, :description, :string
   change_column :galleries, :description, :string
  end

  def down
   change_column :photos, :description, :text
   change_column :galleries, :description, :text
  end
end
