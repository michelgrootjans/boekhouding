class FacturenController < ApplicationController
  def index
    @facturen = Factuur.all
  end

  def show
    @factuur = Factuur.find params[:id]
  end

  def new
  end

  def create
    @factuur = Factuur.create(factuur_params)
    redirect_to action: :show, id: @factuur.id
  end

  def factuur_params
    params.require(:factuur).permit(:ontvanger, :bedrag)
  end

end