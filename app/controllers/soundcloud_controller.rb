class SoundcloudController < ApplicationController
  def new
    if !admin_signed_in?
      redirect_to root_path
    end
    @soundcloud = Soundcloud.new
    p params
  end

  def create
    if !admin_signed_in?
      redirect_to root_path
    end
    @soundcloud = Soundcloud.create(soundcloud_params)
    if @soundcloud.save
      redirect_to videos_path
    end
  end

  def edit
    if !admin_signed_in?
      redirect_to root_path
    end
    @soundcloud = Soundcloud.find(params[:id])
  end

  def update
    if !admin_signed_in?
      redirect_to root_path
    end
    @soundcloud = Soundcloud.find(params[:id])
    @soundcloud.update_attributes(soundcloud_params)
    if @soundcloud.save
      redirect_to videos_path
    end
  end

  def destroy
    if !admin_signed_in?
      redirect_to root_path
    end
    @soundcloud = Soundcloud.find(params[:id])
    if @soundcloud.destroy
      redirect_to videos_path
    end
  end

  private

  def soundcloud_params
    params.require(:soundcloud).permit(:id, :button_name, :reference_number)
  end

end
