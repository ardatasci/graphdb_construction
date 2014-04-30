class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
    	t.string :name, :unique => true
      t.timestamps
    end
    add_index :actors, :name
  end
end
