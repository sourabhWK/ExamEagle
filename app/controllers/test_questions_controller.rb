class TestQuestionsController < ApplicationController

    def index
      @test_questions = TestQuestion.all
      
     
    end
  
    def new
        @test_question = TestQuestion.new
      
    end
  
    def create 
        @test_question = TestQuestion.create(question_params)
      
      if @test_question.save 
           
          flash[:success] = "You have successfully created question"
          redirect_to test_questions_path
      else
          render 'new'
      end
    end 
  
    private
  
    def question_params
      params.require(:test_question).permit(:text,:type,:difficulty)
    end
  
  
  end