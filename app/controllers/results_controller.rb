class ResultsController < ApplicationController
  def submit_option
    # @test_question = TestQuestion.find(params[:id])
    @question_body = QuestionBody.find(params[:question_body_id])
    if params[:option_id]
      @option = Option.find(params[:option_id])
      @result = Result.create(question_body: @question_body, option: @option, user: current_user)
      # debugger
      if @result.save
        
        redirect_back(fallback_location: root_path)
      else
        
      end
    end
    @result = Result.create(question_body_id: @question_body)
  
    if @result.save
      
      redirect_back(fallback_location: root_path)
    else
      
    end
  end
end