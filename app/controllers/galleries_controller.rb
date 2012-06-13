# -*- coding: utf-8 -*-
class GalleriesController < ApplicationController
  # GET /galleries
  # GET /galleries.json
  def index
    @galleries = GalleryDecorator.decorate(Gallery.find(:all, :include => {:photos => :likes}))

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @galleries }
    end
  end

  # GET /galleries/1
  # GET /galleries/1.json
  def show
    @gallery = GalleryDecorator.find(params[:id])
    flash[:notice] = "ログインすると「いいね！」ボタンが押せるようになります。" unless current_user

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gallery }
    end
  end

  # GET /galleries/new
  # GET /galleries/new.json
  def new
    @gallery = Gallery.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gallery }
    end
  end

  # GET /galleries/1/edit
  def edit
    @gallery = Gallery.find(params[:id])
  end

  # POST /galleries
  # POST /galleries.json
  def create
    @galleries = GalleryDecorator.decorate(Gallery.find(:all, :include => :photos))
    @gallery = Gallery.new(params[:gallery])

    respond_to do |format|
      if @gallery.save
        format.html { redirect_to galleries_path, notice: 'Gallery was successfully created.' }
        format.json { render json: @gallery, status: :created, location: @gallery }
      else
        format.html { render action: "index" }
        format.json { render json: @gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /galleries/1
  # PUT /galleries/1.json
  def update
    @gallery = Gallery.find(params[:id])

    respond_to do |format|
      if @gallery.update_attributes(params[:gallery])
        # format.html { redirect_to @gallery, notice: 'Gallery was successfully updated.' }
    render :action => "show"
        format.json { head :no_content }
      else
        # format.html { render action: "edit" }
        format.html { render action: "show" }
        format.json { render json: @gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /galleries/1
  # DELETE /galleries/1.json
  def destroy
    @gallery = Gallery.find(params[:id])
    @gallery.destroy

    respond_to do |format|
      format.html { redirect_to galleries_url }
      format.json { head :no_content }
    end
  end
end
