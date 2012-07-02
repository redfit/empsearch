class WelcomeController < ApplicationController
  def index
    @page = PageDecorator.new(Page.first_or_create!)
  end

  def mercury_update
    page = Page.find(params[:id])
    page.title = params[:content][:page_title][:value]
    page.description = params[:content][:page_description][:value]
    page.content1 = params[:content][:page_content1][:value]
    page.content2 = params[:content][:page_content2][:value]
    page.save!
    render text: ""
  end
end
