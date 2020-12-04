class AddTeamToSelection < ActiveRecord::Migration[5.2]
  def change
    add_column :selections, :team, :string
  end
end
