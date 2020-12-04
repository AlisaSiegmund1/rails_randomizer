class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def group
    set_team
    @members = @team.member_ids.shuffle
    @groupsize = params[:group_by]

    if params[:group_by].blank?
    @groups = []
    else
    @groups = @members.each_slice(@groupsize.to_i).to_a
    end
  end

  def order
    set_team
    @members = @team.member_ids.shuffle
  end

  def pick
    set_team
    @member = @team.member_ids.sample
  end

  def set_team
     @teams = Team.all
    if Team.all.length <= 1
      @team = Team.last
    else
      @team = Team.find(Selection.last.team_id)
    end
  end

  def surprise
  end

  private

end
