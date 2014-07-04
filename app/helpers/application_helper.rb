module ApplicationHelper
  def image_or_none(image_name)
      image_name || "none.png"
  end
end
