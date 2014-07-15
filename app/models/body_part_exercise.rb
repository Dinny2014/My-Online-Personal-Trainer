class BodyPartExercise < ActiveRecord::Base
  belongs_to :body_part
  belongs_to :exercise
end
