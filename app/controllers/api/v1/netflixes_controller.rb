class Api::V1::NetflixesController < ApplicationController
  def import
    CSV.foreach('./netflix_titles.csv', headers: true, col_sep: ',') do |row|
      NetflixTitle.create({
                            show_id: row[0],
                            title: row[2],
                            genre: row[1],
                            year: row[7],
                            country: row[5],
                            published_at: row[6],
                            description: row[11]
                          })
    end
  end

  def index
    if params[:query].present?
      @netflixes = Netflix.search_by(params[:year] || params[:genre] || params[:country])
    else
      @netflix_titles = NetflixTitle.all.order(:year)
    end
  end

end
