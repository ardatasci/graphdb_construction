class ProgramsEntities < ActiveRecord::Base
  
   attr_accessible  :program_id, :entity_id
   #include Neoid::Relationship
  #	neoidable do |c|
  #  	c.relationship start_node: :program, end_node: :entity, type: :program_entity
  # end
 

end
