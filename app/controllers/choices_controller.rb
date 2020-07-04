class MembersController < ApplicationController

  def new
    @choice = Choice.new
  end

  def create
    @choice = Choice.new(choice_params)
    @choice.user_id = current_user.id
  end


  def destroy

  end

  def set_team
    @team = Team.find(params[:id])
  end

  private

  def choice_params
    params.require(:choice).permit(:teams_id)
  end

end
