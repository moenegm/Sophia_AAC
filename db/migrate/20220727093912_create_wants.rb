class CreateWants < ActiveRecord::Migration[7.0]
  def change
    create_table :wants do |t|
      t.string :title
      t.string :descrition

      t.timestamps
    end
  end
end
