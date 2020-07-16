class CreateLeaders < ActiveRecord::Migration[6.0]
  def change
    create_table :leaders do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :is_user, :default => false
      # will have to add user to leader match function by first and last name

      t.timestamps
    end
  end
end