class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:answer]
    if @answer.include?("?")
      @response = 'Silly question, get dressed and go to work!'
    elsif @answer == 'I am going to work right now!'
      @response = 'Great!'
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end


# def coach_answer(your_message)
#   if your_message.include?("?")
#     return "Silly question, get dressed and go to work!"
#   elsif your_message == "I am going to work right now!"
#     return ""
#   else
#     return "I don't care, get dressed and go to work!"
#   end
# end

# def coach_answer_enhanced(your_message)
#   case your_message
#   when "I AM GOING TO WORK RIGHT NOW!"
#     return ""
#   when your_message.upcase
#     return "I can feel your motivation! #{coach_answer(your_message)}"
#   else
#     return coach_answer(your_message)
#   end
# end
