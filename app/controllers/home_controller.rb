class HomeController < ApplicationController
  def index
    @photos = Photo.all
    @projects = Project.all
    @combined = (@photos + @projects).sort_by(&:created_at).reverse
  end
end
