class ProgramsTerms < ActiveRecord::Migration
  def up
  	create_table :programs_terms, :id => false do |t|
  		t.integer :program_id
  		t.integer :term_id
  	end
  end

  def down
  end
end
