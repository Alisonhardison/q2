class IdeasController < ApplicationController

  def index
    @ideas = Idea.all
  end 

  def new
    @idea = Idea.new
  end

  def create
    Idea.create(idea_params)
    redirect_to root_path
  end

  private

  def idea_params
    params.require(:idea).permit(:name, :description)
  end

  def show
    @idea = Idea.find(params[:id])
  end

  def info
    redirect_to new_page  
  end
  
end
