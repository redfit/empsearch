# coding: utf-8
class ApplicationDecorator < Draper::Base
  include Draper::LazyHelpers

  attr_accessor :none

  def like_count
    model.likes.length
  end

  def like_button
    if current_user
      create_like_button
    else
      button_tag :class => "btn btn-info btn-mini disabled" do
        "<i class='icon-thumbs-up icon-white'></i>いいね！".html_safe
      end
    end
  end

  def like_badge
    content_tag(:span, :class => "badge badge-#{badge_level}") do
      like_count.to_s
    end
  end

  def badge_level
    case like_count
    when 0..3 then
      "inverse"
    when 4..6 then
      "info"
    when 7..10 then
      "warning"
    else
      "important"
    end
  end

  def create_like_button
    did = model.likes.detect{ |r| r.user_id == current_user.id }

    if did
      link_to [model, did], :class => "btn btn-warning btn-mini", :method => :delete, :remote => true do
        "<i class='icon-thumbs-down icon-white'></i>取り消す".html_safe
      end
    else

      link_to send("#{model.class.to_s.downcase}_likes_path", model), :class => "btn btn-info btn-mini", :method => :post, :remote => true do
        "<i class='icon-thumbs-up icon-white'></i>いいね！".html_safe
      end
    end
  end

  def initialize(input, options = {})
    @none="未登録"
    super
  end

  def dsp_modal_x
    link_to 'x', '#', :class => 'close', "data-dismiss" => "modal"
  end

  def self.dsp_handle_none_attr(*names)
    names.each do |name|
      define_method("dsp_#{name}") do
        handle_none(model.send(name)){model.send(name)}
      end
    end
  end

  private

  def handle_none(value)
    if value.present?
      yield
    else
      @none
    end
  end
end
