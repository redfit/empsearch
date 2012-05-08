# -*- coding: utf-8 -*-
module ApplicationHelper
  # アラートメッセージ
  def create_alert_message(cls, value, close)
    text = ""
    content_tag(:div, :class => "alert alert-#{cls}") do
      text << content_tag(:button, "x", :class => "close", "data-dismiss" => "alert") if close
      text << value
      text.html_safe
    end if value.present?
  end
end
