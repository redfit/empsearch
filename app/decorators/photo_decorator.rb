# -*- coding: utf-8 -*-
class PhotoDecorator < ApplicationDecorator
  decorates :photo
  dsp_handle_none_attr :name, :description

end
