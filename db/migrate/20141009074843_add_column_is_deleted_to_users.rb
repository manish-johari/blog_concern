class AddColumnIsDeletedToUsers < ActiveRecord::Migration
	class User < ActiveRecord::Base
	end

  def change
    add_column :users, :is_deleted, :boolean
    User.reset_column_information
    # User.update_all is_deleted:false
    User.all.each do |user|
    	user.is_deleted = false
    	user.save
    end
  end
end
