class WelcomeController < ApplicationController
  def index
    @page = Page.first_or_create!
  end

  def mercury_update
    page = Page.find(params[:id])
    page.title = params[:content][:page_title][:value]
    page.description = params[:content][:page_description][:value]
    page.save!
    render text: ""
  end
end
