class CreateChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :choices do |t|
      t.references :user, foreign_key: true
      t.references :team, foreign_key: true
      t.integer :groupsize

      t.timestamps
    end
  end
end
