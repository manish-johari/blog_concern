
class User
  module Name
   extend ActiveSupport::Concern

   included do
    attr_accessible :name
   end

   module ClassMethods
    def first_user
      last
    end
   end
 end
 
end