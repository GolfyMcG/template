module ApplicationHelper
  def print_page_namespace
    "page- #{params[:controller]} " \
    "page-#{params[:controller]}-#{params[:action]}"
  end

  def javascript_action_sub(action_name)
    new_action = action_name.sub 'create', 'new'
    new_action.sub! 'update', 'edit'
    new_action
  end

  def javascript_include_page_tag
    tag_name = params[:controller] + '_' +
               javascript_action_sub(params[:action])
    asset_location = Rails.application.assets.find_asset tag_name
    javascript_include_tag tag_name unless asset_location.nil?
  end

  def nav_link(name)
    content_tag(
      :li,
      content_tag(
        :a,
        name,
        href: 'javascript:void(0)'),
      class: 'nav-link')
  end
end
