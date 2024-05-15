class Competitions::GerbilsController < ApplicationController
  def index
    @comp = Competition.find(params[:id])

  end
end
