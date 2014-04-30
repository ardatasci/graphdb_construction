class ProgramsActors < ActiveRecord::Migration
  def up
  	create_table :programs_gactors, :id => false do |t|
  		t.integer :program_id
  		t.integer :actor_id
  	end
  end

  def down
  end
end
