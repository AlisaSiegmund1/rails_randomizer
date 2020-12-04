class SelectionsController < ApplicationController

  def new
    @selection = Selection.new
    @teams = Team.all
  end

  def create


  end


  def destroy

  end

  def member_params
    params.require(:member).permit(:name)
  end

end
