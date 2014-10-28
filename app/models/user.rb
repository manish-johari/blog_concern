# encoding: UTF-8
class User < ActiveRecord::Base

  include Name

  attr_accessible :email, :is_active, :is_deleted
  validates :is_active, inclusion: {in: [true, false], message: "Select either true or false"}
  validates :is_deleted, inclusion: {in: [true, false]}

  has_many :friendships, foreign_key: 'person_id'
  has_many :friends, through: :friendships

  def create_friendship user
    self.friends << user
    user.friends << self
  end

  # def self.first_user
  #   self.first
  # end


end
