class Entity < ActiveRecord::Base
	
  has_and_belongs_to_many :programs
  attr_accessible :name

  #include Neoid::Node
  #neoidable do |c|
  #    c.field :name
  #end
end
