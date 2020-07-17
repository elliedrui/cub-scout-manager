class ChangeIntegerLimitAgainInUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :uid, :integer, limit: 16
  end
end
