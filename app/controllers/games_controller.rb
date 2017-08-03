class GamesController < ApplicationController
  def name
    @upper_case_name = params[:name].upcase
    if @upper_case_name.starts_with?("A")
      @message = "Your name starts with A. You prbably already knew that though"
    end
    render 'name.html.erb'
  end

  def guess
    @user_guess = params[:guess].to_i
    answer = 37
    if @user_guess > answer
      @message = "Your answer is too high"
    elsif @user_guess < answer
      @message = "your guess is too low"
    else
      @message = "Hey you got it right"
    end
    render 'numbers.html.erb'
  end

  def crazy
    render 'wahoo.html.erb'
  end

  def practice
    render 'form.html.erb'
  end

  def other
    recipe1 = Recipe.new({chef: "brian"})
    recipe1.save
    @title = params[:recipe_title]
    @ingredients = params[:recipe_ingredients]
    p params
    render 'destination.html.erb'
  end
end
