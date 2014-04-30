class CreateTods < ActiveRecord::Migration
  def change
    create_table :tods do |t|
    	t.string :name
      t.timestamps
    end
  end
end
