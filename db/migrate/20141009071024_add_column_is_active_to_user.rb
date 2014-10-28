class AddColumnIsActiveToUser < ActiveRecord::Migration
	class User < ActiveRecord::Base
	end

  def change
    add_column :users, :is_active, :boolean
    User.reset_column_information
    # User.update_all is_active: true
    User.all.each do |user|
    	user.is_active = true
    	user.save
    end
  end
end
