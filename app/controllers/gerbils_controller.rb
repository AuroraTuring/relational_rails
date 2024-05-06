class GerbilsController < ApplicationController

  def index
    @gerbils = Gerbil.all
  end

  def show
    @gerbil = Gerbil.find(params[:id])
  end

end
