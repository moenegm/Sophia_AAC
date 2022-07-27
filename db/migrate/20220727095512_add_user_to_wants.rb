class AddUserToWants < ActiveRecord::Migration[7.0]
  def change
    add_reference :wants, :users, index: true, foreign_key: true
  end
end
