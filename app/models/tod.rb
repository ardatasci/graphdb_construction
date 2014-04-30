class Tod < ActiveRecord::Base

  has_and_belongs_to_many :programs
  attr_accessible :name
  #include Neoid::Node
end
