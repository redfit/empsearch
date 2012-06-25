class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :description
      t.text :content1
      t.text :content2
      t.text :content3

      t.timestamps
    end
  end
end
