class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.belongs_to :likable, polymorphic: true

      t.timestamps
    end
    add_index :likes, [:likable_id, :likable_type]
  end
end
