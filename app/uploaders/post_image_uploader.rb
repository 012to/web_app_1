class PostImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :fog

  process resize_to_fit: [700, nil]
  process :convert_to_webp

  def convert_to_webp
    manipulate! do |img|
      img.format('webp') do |c|
        c.quality 50
      end
      img
    end
  end

  def extension_allowlist
    %w(jpg jpeg gif png webp HEIC)
  end

  def filename
    super.chomp(File.extname(super)) + '.webp' if original_filename.present?
  end
end
