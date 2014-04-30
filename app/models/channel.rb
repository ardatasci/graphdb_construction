class Channel < ActiveRecord::Base
	
  attr_accessible :name
  #include Neoid::Node
  #neoidable do |c|
  #    c.field :name
  #end
end
