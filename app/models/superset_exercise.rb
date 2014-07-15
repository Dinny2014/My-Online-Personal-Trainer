class SupersetExercise < ActiveRecord::Base
  belongs_to :superset
  belongs_to :exercise
end
