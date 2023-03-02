class AnswersController < ApplicationController

  def new
    @question = Question.find(params[:question_id])
  end

  def index
    @questions = Question.all
    @q=Question.find(params[:question_id])
    @answers=@q.answers
  end

  def create
    question = Question.find(params[:question_id])
    @answer = question.answers.create(answer_params)
    if @answer.save
      redirect_to questions_path
    else
      render 'new'
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:ans,:correct)
  end
end