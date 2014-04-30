class ProgramsDirectors < ActiveRecord::Migration
  def up
  	create_table :programs_directors, :id => false do |t|
  		t.integer :program_id
  		t.integer :director_id
  	end
  end

  def down
  end
end
