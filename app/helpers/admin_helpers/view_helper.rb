module AdminHelpers
  module ViewHelper
    def image_attachment(file)
      return content_tag(:span, 'No file') if file.blank?
      link_to_image(file)
    end
  end
end
