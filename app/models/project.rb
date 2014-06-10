class Project < ActiveRecord::Base
	has_many :items

	self.per_page = 5

	def self.filter(query)
		query ? Project.where("name LIKE ?", "%#{query}%") : Project.all
	end
end
