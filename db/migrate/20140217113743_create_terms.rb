class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
    	t.string :name, :unique => true
    	t.float :tf_idf
      t.timestamps
    end
    add_index :terms, :name
  end
end
