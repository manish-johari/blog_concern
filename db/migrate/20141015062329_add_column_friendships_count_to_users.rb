class AddColumnFriendshipsCountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :friendships_count, :integer
  end
end
