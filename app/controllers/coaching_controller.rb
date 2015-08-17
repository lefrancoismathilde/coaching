class CoachingController < ApplicationController

  def answer
    @query = params[:query]
    @response = params[:response]

    if @query == "i am going to work right now!"
      @response =  "I can feel your motivation!"
    elsif @query.end_with?("?")
      @response = "Silly question, get dressed and go to work!"
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end

  def ask
    @response = params[:response]
  end


end
