class ProgramsEntities < ActiveRecord::Migration
  def up
  	create_table :programs_entities, :id => false do |t|
  		t.integer :program_id
  		t.integer :entity_id
  	end
  end

  def down
  end
end
