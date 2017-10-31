class CreatePhotoCollections < ActiveRecord::Migration[5.1]
  def change
    create_table :photo_collections do |t|
      t.string :title

      t.timestamps
    end
  end
end
