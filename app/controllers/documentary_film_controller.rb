class DocumentaryFilmController < ApplicationController
  def index
    @documentaryFilms = DocumentaryFilm.all
  end

  def new
    @documentaryFilm = DocumentaryFilm.new
  end

  def create
    @documentaryFilm = DocumentaryFilm.new(documentaryFilms_params)

    if @documentaryFilm.save
      redirect_to documentaryFilms_index_path
    else
      render :new
    end
  end

  private

  def documentaryFilms_params
    params_require(:documentaryFilm).permit(:name, :synopsis, :director)
  end
end
