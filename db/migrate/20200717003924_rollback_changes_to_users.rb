class RollbackChangesToUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :uid, :string
  end
end
