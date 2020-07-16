class CreatePacks < ActiveRecord::Migration[6.0]
  def change
    create_table :packs do |t|
      t.integer :leader_id
      t.integer :scout_id
      t.integer :pack_num
      t.string :charter_org

      t.timestamps
    end
  end
end
