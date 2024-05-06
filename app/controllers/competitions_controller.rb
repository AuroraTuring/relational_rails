class CompetitionsController < ApplicationController

  def index
    @competitions = Competition.all # not plural, model is named Competition
  end

  def show
    @competition = Competition.find(params[:id])
  end

end
