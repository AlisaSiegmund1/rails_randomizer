class MembersController < ApplicationController

  def new
    @member = Member.new
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

  def destroy
    @step = Step.find(params[:id])
    @recipe = Recipe.find(params["recipe_id"].to_i)
    @step.destroy
    redirect_to new_recipe_step_path(@recipe)
  end

  def set_team
    @team = Team.find(params[:id])
  end

  private

  def team_params
    params.require(:team).permit(:title)
  end

end
