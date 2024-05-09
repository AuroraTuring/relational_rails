class Competitions::GerbilsController < ApplicationController
  def index
    @competition_gerbils = Competition.find(params[:id]).gerbils
  end
end
