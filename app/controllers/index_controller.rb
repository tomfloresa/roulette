class IndexController < ApplicationController
  def index
    @round = Round.create!
    @players = Player.all
  end

  def spin_roulette
    red = Array(1..49)
    black = Array(1..98)
    green = [99, 100]

    random_number = rand(1..100)

    round = Round.find(params[:round_id])

    if red.include? random_number
      @result = 1

      round.roulette_result = @result
      round.save!

      @winners = Bet.where(roulette_choice: @result, round_id: params[:round_id])
      if !@winners.nil?
        @winners.each do |w|
          amount_double = w.amount_betted * 2
          w.player.money = w.player.money + amount_double
          w.player.save!
        end
      end
    elsif black.include? random_number
      @result = 2

      round.roulette_result = @result
      round.save!

      @winners = Bet.where(roulette_choice: @result, round_id: params[:round_id])
      if !@winners.nil?
        @winners.each do |w|
          amount_double = w.amount_betted * 2
          w.player.money = w.player.money + amount_double
          w.player.save!
        end
      end
    else
      @result = 3

      round.roulette_result = @result
      round.save!

      @winners = Bet.where(roulette_choice: @result, round_id: params[:round_id])
      if !@winners.nil?
        @winners.each do |w|
          amount_by_fifteen = w.amount_betted * 15
          w.player.money = w.player.money + amount_by_fifteen
          w.player.save!
        end
      end
    end

    @players = Player.all

    respond_to do |format|
      format.js
    end
  end
end
