class CocktailsController < ApplicationController
  def index
    # listagem de todos os cocktails
    @cocktails = Cocktail.all
  end

  def show
    #detalhes de um cocktail, preciso achar o cocktail que eu quero mostrar
    @cocktail = Cocktail.find(params[:id])
  end

  def create
  end

  def new
  end
end
