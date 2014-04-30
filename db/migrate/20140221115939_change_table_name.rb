class ChangeTableName < ActiveRecord::Migration
  def up
  	rename_table :programs_genres, :genres_programs
  end

  def down
  	rename_table :genres_programs, :programs_genres 
  end
end
