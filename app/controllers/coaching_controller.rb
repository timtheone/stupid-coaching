class CoachingController < ApplicationController
  def answer
    @question = params[:question]
    @answer = coach_answer_enchanced(@question)

  end



  def ask
  end

  private


  def coach_answer(question)
    if question.end_with?("?")
      return "Silly question, get dressed and go to work!"
    elsif question == "I am going to work right now!"
      return ""
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enchanced(question)
    if question.upcase == question
      answer2 = coach_answer(question)
      return "I can feel your motivation. " + answer2
    else
      coach_answer(question)
    end
  end

end
