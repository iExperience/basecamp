class Project < ActiveRecord::Base
	has_many :items

	def self.filter(query)
		query ? Project.where("name LIKE ?", "%#{query}%") : Project.all
	end
end
