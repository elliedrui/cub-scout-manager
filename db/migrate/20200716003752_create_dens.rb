class CreateDens < ActiveRecord::Migration[6.0]
  def change
    create_table :dens do |t|
      t.string :grade
      t.string :meeting_time
      t.integer :pack_id
      
      t.timestamps
    end
  end
end
