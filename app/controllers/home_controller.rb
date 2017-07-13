class HomeController < ApplicationController
  def index
    @scoring_samples = Video.where(section: "scoring_samples")
    @featured_works = Video.where(section: "featured_works")
  end

  
end
