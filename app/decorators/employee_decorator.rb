class EmployeeDecorator < ApplicationDecorator
  decorates :employee
  include Draper::LazyHelpers

  def avatar
      image_tag(model.pic_name, :class => 'avatar').concat(content_tag(:h1, model.user_name))
  end
end
