class BodyPart < ActiveRecord::Base
	has_many :body_part_exercises
	has_many :exercises,through: :body_part_exercises
end
