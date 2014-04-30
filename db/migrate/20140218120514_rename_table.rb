class RenameTable < ActiveRecord::Migration
  def up
  	rename_table :programs_gactors, :programs_actors
  	add_column :programs_actors, :id, :primary_key
  end

  def down
  end
end
