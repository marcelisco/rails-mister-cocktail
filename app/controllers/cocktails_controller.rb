class CocktailsController < ApplicationController
  def index
    # listagem de todos os cocktails
    @cocktails = Cocktail.all
  end

  def show
  end

  def create
  end

  def new
  end
end
