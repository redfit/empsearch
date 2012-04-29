# coding: utf-8
module ApplicationHelper
  # 0件のアラートメッセージ
  def not_found_alert
    content_tag(:div, "０件です。検索条件を変更してください。", :class => "alert alert-error")
  end

  # 検索条件選択してくださいメッセージ
  def select_condition_label
    content_tag(:div, "検索条件を指定してください。", :id => "init_info", :class => "alert alert-info")
  end

end
