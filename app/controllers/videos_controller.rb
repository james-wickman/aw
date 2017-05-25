class VideosController < ApplicationController
  def index
    @lukes_compositions = Video.where(section: "lukes_compositions")
    @weird_phishes = Video.where(section: "weird_phishes")
    @wikr = Video.where(section: "wikr")
    @scoring_samples = Video.where(section: "scoring_samples")
    @featured_works = Video.where(section: "featured_works")
    @video = Video.new
  end

  def new
    @video = Video.new
    p params
    @section = params[:video][:section]
    p @section
  end

  def create
    @video = Video.create(video_params)
    if @video.save
      redirect_to videos_path
    end
  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    @video = Video.find(params[:id])
    @video.update_attributes(video_params)
    if @video.save
      redirect_to videos_path
    end
  end

  def destroy
    @video = Video.find(params[:id])
    if @video.destroy
      redirect_to videos_path
    end
  end

  private

  def video_params
      params.require(:video).permit(:url, :name, :key, :description, :section, :id)
    end

end
