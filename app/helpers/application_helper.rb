# -*- coding: utf-8 -*-
module ApplicationHelper
  def active_employees?(request)
    active_menu? request, "employees"
  end

  def active_album?(request)
    active_menu? request, "galleries", "photos"
  end

  def active_menu?(request, *menu)
    "active" if menu.detect{|m| request.path.index(m)}
  end

  def not_found_alert
    create_alert_message("", "error", "０件です。検索条件を変更してください。", false)
  end

  def init_info_alert
    create_alert_message("init_info", "info", "検索条件を指定してください。", false)
  end

  # アラートメッセージ
  def create_alert_message(id, cls, value, close)
    text = ""
    content_tag(:div, :id => id,  :class => "alert alert-#{cls}") do
      text << content_tag(:button, "x", :class => "close", "data-dismiss" => "alert") if close
      text << value
      text.html_safe
    end if value.present?
  end
end
