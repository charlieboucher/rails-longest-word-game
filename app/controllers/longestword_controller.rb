require 'longest_word'

class LongestwordController < ApplicationController

  def game
    @grid = generate_grid(12)
    @start_time = Time.now.to_i
  end

  def score
    @end_time = Time.now.to_i
    @score = run_game(params[:query], params[:grid_saved], params[:start_time_saved].to_i, @end_time)
  end

end
