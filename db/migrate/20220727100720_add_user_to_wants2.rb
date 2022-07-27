class AddUserToWants2 < ActiveRecord::Migration[7.0]
  def change
    add_reference :wants, :user, index: true, foreign_key: true
  end
end
