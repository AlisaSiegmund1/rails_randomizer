class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    @team.user_id = current_user.id
    if @team.save
      redirect_to team_path(@team)
    else
      raise
      render :new
    end
  end

  def update
    set_team
    @team.update(team_params)
    redirect_to team_path(@team)
  end

  def show
    set_team
    @user = User.find(@team.user_id)
  end

  def edit
    set_team
  end


  def set_team
    @team = Team.find(params[:id])
  end

  private

  def team_params
    params.require(:team).permit(:title)
  end

end
