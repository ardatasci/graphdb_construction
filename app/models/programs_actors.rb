class ProgramsActors < ActiveRecord::Base
  
   attr_accessible  :program_id, :actor_id
   #include Neoid::Relationship
   #neoidable do |c|
   # 	c.relationship start_node: :program, end_node: :actor, type: :program_actor
  # end
 

end
