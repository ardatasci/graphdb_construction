class ProgramsGenres < ActiveRecord::Migration
  def up
  	create_table :programs_genres, :id => false do |t|
  		t.integer :program_id
  		t.integer :genre_id
  	end
  end

  def down
  end
end
