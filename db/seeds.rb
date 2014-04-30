# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



for file in Dir.glob('public/program_profiles/*') 		
	puts "reading :: :: :: #{Rails.root}/#{file}"
  
	data = File.read("#{Rails.root}/" + file)
	array = JSON.parse(data)
	array.each do |obj|
		puts "Name  : #{obj["name"]}"
		p = Program.find_or_create_by_name(obj["name"])

		p.start_time = obj["startTime"]
		p.end_time = obj["endTime"]
		p.duration = obj["duration"]
		p.image_url = obj["imageUrl"]
		p.summary = obj["summary"]
		p.description = obj["longDescription"]
		p.date = obj["date"]

		p.save!
		puts "Name  : #{obj["name"]}"
		obj["stemmedWords"].each do |term|
			t = Term.find_or_create_by_name(term)
			p_t = ProgramsTerms.find_or_create_by_program_id_and_term_id(p.id, t.id)
			p_t.update_attributes(:tf => p_t.tf + 1)
		end unless obj["stemmedWords"] == nil
		obj["genreList"].each do |genre|
			#g = Genre.find_or_create_by_name(genre)
			#g.save!
			#p_g = GenresPrograms.find_or_create_by_program_id_and_genre_id(p.id, g.id)
			#p_g.save!
			#puts "Genre #{p.genres.collect{|g| g.name }}"
		end unless obj["genreList"] == nil
		obj["timeOfDay"].each do |tod|
			t = Tod.find_or_create_by_name(tod)
			p_t = ProgramsTods.find_or_create_by_program_id_and_tod_id(p.id, t.id)
		end  unless obj["timeOfDay"] == nil
		obj["annotatedEntities"].each do |entity|
			t = Entity.find_or_create_by_name(entity['keyword'])
			p_t = ProgramsEntities.find_or_create_by_program_id_and_entity_id(p.id, t.id)
		end unless obj["annotatedEntities"] == nil
		obj["actors"].each do |entity|
			t = Actor.find_or_create_by_name(entity)
			p_t = ProgramsActors.find_or_create_by_program_id_and_actor_id(p.id, t.id)
		end unless obj["actors"] == nil
		obj["directors"].each do |entity|
			t = Director.find_or_create_by_name(entity)
			p_t = ProgramsDirectors.find_or_create_by_program_id_and_director_id(p.id, t.id)
		end unless obj["directors"] == nil


		p.save!
		



	end
end
