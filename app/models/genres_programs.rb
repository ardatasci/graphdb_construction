class GenresPrograms < ActiveRecord::Base

  attr_accessible  :program_id, :genre_id
  
  #include Neoid::Relationship
  #neoidable do |c|
 #   	c.relationship start_node: :program, end_node: :genre, type: :genres_programs
  #end
 

end
