class CreateScoutsAndLeaders < ActiveRecord::Migration[6.0]
  def change
    create_table :scouts do |t|
      t.string :first_name
      t.string :last_name
      t.string :grade
      t.bigint :den_id
     
      t.timestamps
    end

    create_table :leaders do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :is_user, :default => false
      t.bigint :den_id
      # will have to add user to leader match function by first and last name
      t.timestamps
    end

      create_table :leaders_scout, id: false do |t|

        t.belongs_to :leader
        t.belongs_to :scout
      end
      

  end
end
