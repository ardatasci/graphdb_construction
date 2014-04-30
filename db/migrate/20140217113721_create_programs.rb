class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
    	t.string	:name
    	t.text		:description
    	t.date		:date
    	t.datetime  :start_time
    	t.datetime  :end_time
    	t.integer	:duration
    	t.string	:image_url
    	t.text		:summary
    	t.text		:long_description
      t.integer :channel_id
      t.timestamps
    end
  end
end
