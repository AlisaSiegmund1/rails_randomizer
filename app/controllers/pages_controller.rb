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
    # @teams = Team.where(user_id: current_user.id)
    # @groupsize = params[:groupsize]


    # if params[:group_by].blank?
    #   @members
    # else
    #  @members.group_by{ |x| x }.values

    # end

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
    @team = Team.first
  end

  def surprise
  end

  private

end
