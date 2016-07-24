class IndexController < ApplicationController
  def index
    @round = Round.new
    @players = Player.all
  end
end
