class CreatePacks < ActiveRecord::Migration[6.0]
  def change
    create_table :packs do |t|
  
      t.integer :pack_number
      t.string :charter_organization

      t.timestamps
    end
  end
end
