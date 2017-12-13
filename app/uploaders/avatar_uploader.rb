class AvatarUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  include CarrierWave::MiniMagick

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumbnail do
    resize_to_fill(30, 30)
  end

  version :bigger do
    resize_to_fill(40, 40)
  end
end
