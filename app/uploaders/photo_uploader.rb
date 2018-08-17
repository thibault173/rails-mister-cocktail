class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  def store_identifier
    "mister-cocktail"
  end

end
