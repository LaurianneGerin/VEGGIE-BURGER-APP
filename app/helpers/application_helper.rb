module ApplicationHelper
  def asset_exists?(path)
    !Rails.application.assets.find_asset(path).nil?
  end

  def image_set_tag(source, options = {})
    sizes = options.delete(:sizes) || %w(2x)
    srcset = sizes.map do |size|
      filename = File.basename(source, '.*')
      name = source.sub(filename, "#{filename}@#{size}")
      "#{path_to_image(name)} #{size}"
    end.join(', ')

    image_tag(source, options.merge(srcset: srcset))
  end
end
