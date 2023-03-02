class QuestionsController < ApplicationController

  def index
    @questions = Question.all
    
    @answers=Answer.all
  end

  def new
    @question = Question.new
    
  end

  def create 
    @question = Question.create(question_params)
    
    if @question.save 
         
        flash[:success] = "You have successfully created question"
        redirect_to questions_path
    else
        render 'new'
    end
  end 

  private

  def question_params
    params.require(:question).permit(:q_level,:q_type,:quest,:language)
  end


end