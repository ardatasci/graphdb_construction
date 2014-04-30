class AddIdToProgramsTerms < ActiveRecord::Migration
  def change
  	add_column :programs_terms, :id, :primary_key
  end
end
