class CreateDens < ActiveRecord::Migration[6.0]
  def change
    create_table :dens do |t|
        t.string :den_name
        t.string :grade
        t.string :meeting_time
        t.bigint :pack_id
        t.bigint :scout_id
        t.bigint :leader_id
        
        t.timestamps
    end
  end
end
