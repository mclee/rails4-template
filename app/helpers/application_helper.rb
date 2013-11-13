# -*- encoding : utf-8 -*-
module ApplicationHelper
  def title(page_title)
    content_for(:title) { page_title }
  end

  def flash_class(level)
    case level
    when :success then "alert alert-success"
    when :info then "alert alert-info"
    when :warning then "alert alert-warning"
    when :danger then "alert alert-danger"
    when :notice then "alert alert-warning"
    when :error then "alert alert-danger"
    when :alert then "alert alert-warning"
    end
  end

  def nav_link(link_text, link_path)
    class_name = current_page?(link_path) ? 'active' : nil

    content_tag(:li, :class => class_name) do
      link_to link_text, link_path
    end
  end

end
