class SelectionsController < ApplicationController

  def new
    @selection = Selection.new
    @teams = Team.all
  end

  def create
    @selection = Selection.new(selection_params)
    if @selection.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def selection_params
    params.require(:selection).permit(:team_id)
  end

end
