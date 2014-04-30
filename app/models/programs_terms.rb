class ProgramsTerms < ActiveRecord::Base
  
   attr_accessible :tf, :program_id, :term_id

   #include Neoid::Relationship
   def increment_tf
      self.tf = self.tf + 1
   end

end
