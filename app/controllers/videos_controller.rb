class VideosController < ApplicationController
  def index
    if !admin_signed_in?
      redirect_to root_path
    end
    @lukes_compositions = Video.where(section: "lukes_compositions")
    @weird_phishes = Video.where(section: "weird_phishes")
    @wikr = Video.where(section: "wikr")
    @scoring_samples = Video.where(section: "scoring_samples")
    @featured_works = Video.where(section: "featured_works")
    @video = Video.new
    @soundcloud_playlists = Soundcloud.all
  end

  def new
    if !admin_signed_in?
      redirect_to root_path
    end
    @video = Video.new
    p params
    @section = params[:video][:section]
    p @section
  end

  def create
    if !admin_signed_in?
      redirect_to root_path
    end
    @video = Video.create(video_params)
    if @video.save
      redirect_to videos_path
    end
  end

  def edit
    if !admin_signed_in?
      redirect_to root_path
    end
    @video = Video.find(params[:id])
  end

  def update
    if !admin_signed_in?
      redirect_to root_path
    end
    @video = Video.find(params[:id])
    @video.update_attributes(video_params)
    if @video.save
      redirect_to videos_path
    end
  end

  def destroy
    if !admin_signed_in?
      redirect_to root_path
    end
    @video = Video.find(params[:id])
    if @video.destroy
      redirect_to videos_path
    end
  end

  private

  def video_params
    params.require(:video).permit(:url, :name, :key, :description, :section, :id)
  end

  def soundcloud_params
    params.require(:soundcloud).permit(:id, :button_name, :reference_number)
  end

end
