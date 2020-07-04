class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def group
    @teams = Team.where(user_id: current_user.id)
  end

  def order
  end

  def pick
  end

  def surprise
  end
end
