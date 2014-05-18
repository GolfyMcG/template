module ApplicationHelper
  def print_page_namespace
    "page-" + params[:controller] + " " + "page-" + params[:controller] + "-" + params[:action]
  end
end
