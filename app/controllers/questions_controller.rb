class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_question = params[:ask]
    if @user_question == "i'm going to work"
      @coach_answer = "great"
    elsif @user_question[-1] == "?"
      @coach_answer = "Silly question, get dressed and go to work!"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
