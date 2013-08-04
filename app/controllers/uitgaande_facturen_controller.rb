class UitgaandeFacturenController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    redirect_to action: :show, id: "1"
  end
end