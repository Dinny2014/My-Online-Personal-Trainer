class Exercise < ActiveRecord::Base
	has_many :body_part_exercises
	has_many :body_parts,through: :body_part_exercises
	has_many :videos
	has_many :programme_exercises
	has_many :programmes, through: :programme_exercises
end
