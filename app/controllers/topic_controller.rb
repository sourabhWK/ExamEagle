class TopicController < ApplicationController

  def index
    @topic = Topic.all
    
   
  end

  def new
    @topic = Topic.new
    
  end

  def create 
      @topic = Topic.create(question_params)
    
    if @topic.save 
         
        flash[:success] = "You have successfully created question"
        redirect_to new_question_path
    else
        render 'new'
    end
  end 

  private

  def question_params
    params.require(:topic).permit(:name)
  end


end