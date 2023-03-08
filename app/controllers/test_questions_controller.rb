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
  
  def edit
    @test_question = TestQuestion.find(params[:id])
 end
  
 def update
  @test_question = TestQuestion.find(params[:id])
     if @test_question.update(question_params)
      
         flash[:success] = "You have successfully updated your information"
         redirect_to test_questions_path(@test_question)
     else
         render 'new'
     end
 end

 def destroy
  
  @test_question = TestQuestion.find(params[:id])
  @test_question.destroy
  redirect_to test_questions_path(@test_question)
 end
    

    private
  
    def question_params
      params.require(:test_question).permit(:text,:image,:passing_marks,:no_of_question,:full_marks,:description,:question_type,:difficulty,:topic_id,:language_id)
                              
    end
  
  
  end