class AddUserToDrugs < ActiveRecord::Migration[5.0]
  def change
    add_reference :drugs, :user, foreign_key: true
  end
end
