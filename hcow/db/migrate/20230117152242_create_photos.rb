class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.integer :album_id
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
