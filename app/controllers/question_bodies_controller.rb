class QuestionBodiesController < ApplicationController
  

  def new
    @test_question = TestQuestion.find(params[:test_question_id])
  end

  def create 
    test_question = TestQuestion.find(params[:test_question_id])
    @question_body = test_question.question_bodies.create(question_params)
    
    if @question_body.save 
         
        flash[:success] = "You have successfully created question"
        redirect_to test_questions_path
    else
        render 'new'
    end
  end 

  def edit
    @question_body = QuestionBody.find(params[:id])
  end
  
 def update
  @question_body = QuestionBody.find(params[:id])
     if @question_body.update(question_params)
      
         flash[:success] = "You have successfully updated your questions"
         redirect_to questions_path(@question)
     else
         render 'new'
     end
 end

 def destroy
  
  @question_body = QuestionBody.find(params[:id])
  @question_body.destroy
  redirect_to questions_path(@question)
 end

  private

  def question_params
    params.require(:question_bodies).permit(:text)
  end


end