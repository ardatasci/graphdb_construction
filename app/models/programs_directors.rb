class ProgramsDirectors < ActiveRecord::Base
  
   attr_accessible  :program_id, :director_id
  # include Neoid::Relationship
  # neoidable do |c|
  #  	c.relationship start_node: :program, end_node: :director, type: :program_director
  # end
 

end
