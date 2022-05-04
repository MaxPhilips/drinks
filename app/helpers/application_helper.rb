module ApplicationHelper
  def active_class(path)
    request.path == path ? 'active' : ''
  end

  def active_link_to(name, path)
    link_to(name, path, class: "nav-link #{active_class(path)}")
  end
end
