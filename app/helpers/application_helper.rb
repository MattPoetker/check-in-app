module ApplicationHelper
  def current?(path, classes)
    return classes if request.path == path
    ''
  end
end
