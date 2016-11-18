class DosesController < ApplicationController
  before_action :set_cocktail

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    @dose.save
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
   @dose = Dose.find(params[:cocktail_id])
   @dose.delete
   redirect_to cocktail_path
  end

  def new
    @dose = Dose.new
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

end
