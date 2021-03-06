class CocktailsController < ApplicationController
  def index
    # listagem de todos os cocktails
    @cocktails = Cocktail.all
  end

  def show
    # detalhes de um cocktail, preciso achar o cocktail que eu quero mostrar
    @cocktail = Cocktail.find(params[:id])
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def new
    # página formulário para criar um novo cocktail
    @cocktail = Cocktail.new
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

end
