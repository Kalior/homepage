module PhotosHelper
  def cache_key_for_photos
    count          = Photo.count
    max_updated_at = Photo.maximum(:updated_at).try(:utc).try(:to_s, :number)
    "photos/all-#{count}-#{max_updated_at}"
  end
end
