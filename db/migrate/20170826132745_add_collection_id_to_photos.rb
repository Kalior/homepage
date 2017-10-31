class AddCollectionIdToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_reference :photos, :photo_collection, foreign_key: true
  end
end
