class OptionsController < ApplicationController

  def new
    @optionable = find_optionable
  end

  def index
    @questions = Question.all
    if params[:question_id]
      @q=Question.find(params[:question_id])
      @options=@q.options
    end
  end

  def create
    @optionable = find_optionable
    @option = @optionable.options.create(answer_params)
    # debugger
    if @option.save
      redirect_to test_questions_path
    else
      render :new
    end
  end

  private

  def answer_params
    params.require(:option).permit(:text,:correct)
  end

  def find_optionable
    if params[:question_body_id]
      QuestionBody.find(params[:question_body_id])
    elsif params[:question_id]
      Question.find(params[:question_id])
    end
  end

end