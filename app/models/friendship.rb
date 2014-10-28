class Friendship < ActiveRecord::Base
  attr_accessible :friend_id, :person_id

  belongs_to :user, foreign_key: 'person_id', counter_cache: true
  belongs_to :friend, foreign_key: 'friend_id', class_name: 'User'
  
end
