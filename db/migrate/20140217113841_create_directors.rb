class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
    	t.string :name, :unique => true
      t.timestamps
    end
    add_index :directors, :name
  end
end
