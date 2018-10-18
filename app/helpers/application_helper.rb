module ApplicationHelper
  def active_class(link_path)
    current_page?(link_path) ? "active" : ""
  end

  # link_to(path, html: {class: active_class(path)})
end
