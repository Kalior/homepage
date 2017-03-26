# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
  def content_type_whitelist
    /image\//
  end
  def extension_whitelist
    %w(jpg jpeg gif png)
  end

  process resize_to_fit: [4000, 4000]
  process :fix_orientation

  version :front do
    process resize_to_fit: [600, 600]
  end

  version :thumb do
    process resize_to_fill: [200,200]
  end

  def fix_orientation
    manipulate! do |img|
      img.auto_orient
    end
  end
end
