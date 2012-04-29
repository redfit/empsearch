# coding: utf-8
class ApplicationDecorator < Draper::Base
  include Draper::LazyHelpers

  attr_accessor :none

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
