class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @doses = @cocktail.doses
    @ingredients = @cocktail.ingredients
  end

  def new
    @cocktail = Cocktail.new
    # @cocktail.units.build
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.delete
    redirect_to root_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end

end


