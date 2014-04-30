class Program < ActiveRecord::Base


   has_and_belongs_to_many :terms
   has_and_belongs_to_many :tods
   has_and_belongs_to_many :genres
   has_and_belongs_to_many :entities
   has_and_belongs_to_many :actors
   
   attr_accessible :name, :start_time, :end_time, :duration, :description, :summary, :image_url

   include Neoid::Node
   neoidable do |c|
      c.field :name
   end
end
