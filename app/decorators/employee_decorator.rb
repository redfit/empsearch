# coding: utf-8
class EmployeeDecorator < ApplicationDecorator
  decorates :employee
  dsp_handle_none_attr :email, :unit, :role, :tel1, :tel2, :tel3, :place, :introduction, :target

  def dsp_modal_x_employee(modal)
    dsp_modal_x if modal
  end

  def avatar
    image_tag(model.pic_name, :class => 'avatar').concat(content_tag(:h1, model.user_name))
  end

  def dsp_icon_email
    link_to("<i class='icon-envelope icon-white'></i>".html_safe, "mailto:#{model.email}", class: "btn btn-success btn-mini")
  end

end
