class GuessesController < ApplicationController
  before_action :authenticate_with_token!

  def new
    @guess = Guess.new
  end 








end
