class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  def public_id
    return "mister-cocktail/" + model.name
   end

end
