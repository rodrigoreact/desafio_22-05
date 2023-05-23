class SerieController < ApplicationController
  def index
    @series = Serie.all
  end

  def new
    @serie = Serie.new
  end

  def create
    @serie = Serie.new(series_params)

    if @serie.save
      redirect_to series_index_path
    else
      render :new
    end
  end

  private

  def series_params
    params_require(:series_params).permit(:name, :synopsis, :director)
  end
end
