# -*- coding: utf-8 -*-
class LikesController < ApplicationController
  before_filter :load_likable
  def create
    @likable.likes.create!(:user_id => current_user)
    render "galleries/show"
  end

  def destroy
    Like.find(params[:id]).destroy

    render "galleries/show"
  end

  private

  def load_likable
    resource, id = request.path.split('/')[1, 2]
    @likable = (resource.singularize.classify + "Decorator").constantize.find(id, :include => :likes)
  end
end
