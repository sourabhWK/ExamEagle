class QuestionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @questions = Question.all
    
    @options=Option.all
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

  def edit
    @question = Question.find(params[:id])
 end
  
 def update
  @question = Question.find(params[:id])
     if @question.update(question_params)
      
         flash[:success] = "You have successfully updated your questions"
         redirect_to questions_path(@question)
     else
         render 'new'
     end
 end

 def destroy
  
  @question = Question.find(params[:id])
  @question.destroy
  redirect_to questions_path(@question)
 end

  private

  def question_params
    params.require(:question).permit(:text,:question_type,:difficulty,:language_id,:topic_id)
  end


end