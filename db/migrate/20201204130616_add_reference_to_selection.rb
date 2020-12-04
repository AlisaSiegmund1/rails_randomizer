class AddReferenceToSelection < ActiveRecord::Migration[5.2]
  def change
    add_reference :members, foreign_key: true
  end
end
