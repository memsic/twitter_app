class CreateCelebs < ActiveRecord::Migration
  def change
    create_table :celebs do |t|
      t.string :username
      t.integer :t_id
      t.integer :followers

      t.timestamps
    end
  end
end
