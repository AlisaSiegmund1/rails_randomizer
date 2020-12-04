class AddTeamReferenceToSelections < ActiveRecord::Migration[5.2]
  def change
    add_reference :selections, :team, foreign_key: true
  end
end
