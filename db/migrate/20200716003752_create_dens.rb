class CreateDens < ActiveRecord::Migration[6.0]
  def change
    create_table :dens do |t|
      t.integer :leader_id
      t.integer :scout_id
      t.string :meeting_time

      t.timestamps
    end
  end
end