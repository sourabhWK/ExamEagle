class LanguagesController < ApplicationController

  def index
    @language = Language.all

  end




  def create_ajax
    @language = Language.new(language_params)

    respond_to do |format|
      if @language.save
        format.json { render json: @language, status: :created }
      else
        format.json { render json: @language.errors, status: :unprocessable_entity }
      end
    end
  end

 

  private

  def language_params
    params.require(:language).permit(:name)
  end
end