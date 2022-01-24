class Api::V1::NetflixesController < ApplicationController
  def index
    @netflixes = Netflixes.search_by(params[:year]|| params[:genre] || params[:country])
  end
end
