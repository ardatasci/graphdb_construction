class ProgramsToDs < ActiveRecord::Migration
  def up
  	create_table :programs_tods, :id => false do |t|
  		t.integer :program_id
  		t.integer :tod_id
  	end
  end

  def down
  end
end
