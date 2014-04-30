class AddColumnToProgramsTerms < ActiveRecord::Migration
  def change
  	add_column :programs_terms, :tf, :integer, :default => 0
  end
end
