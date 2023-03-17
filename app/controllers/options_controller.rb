class OptionsController < ApplicationController

  def new
    @question = Question.find(params[:question_id])
  end

  def index
    @questions = Question.all
    @q=Question.find(params[:question_id])
    @options=@q.options
  end

  def create
    question = Question.find(params[:question_id])
    @option = question.options.create(answer_params)
    
    if @option.save
      redirect_to questions_path
    else
      render 'new'
    end
  end

  def create_option_ajax
    question_body = QuestionBody.find(params[:question_body_id])
    @opt = question_body.options.create(answer_params)
    if @opt.save
      redirect_to start_test_path
    else
      render 'new'
    end
  end

  private

  def answer_params
    params.require(:option).permit(:text,:correct)
  end

  

end