require 'active_support/concern'

module Name
 extend ActiveSupport::Concern

 included do
  attr_accessible :name
 end

 module ClassMethods
  def first_user
    first
  end
 end
 
end