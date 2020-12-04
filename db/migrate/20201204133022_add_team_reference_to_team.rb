class AddTeamReferenceToTeam < ActiveRecord::Migration[5.2]
  def change
    add_reference :teams, :selection, foreign_key: true
  end
end
