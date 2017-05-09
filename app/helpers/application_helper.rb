module ApplicationHelper

  def super_admin_signed_in?
    user_signed_in? && current_user.super_admin?
  end

  def nav_link(text, path, condition=false, options={})
    options[:class] = current_page?(path) || condition ? "item active" : "item"
    options[:title] = text unless options.has_key?(:title)

    link_to(text, path, options)
  end

end
