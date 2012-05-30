class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.text :description
      t.references :gallery

      t.timestamps
    end
    add_index :photos, :gallery_id
  end
end
