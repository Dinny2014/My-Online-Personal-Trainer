class ProgrammeExercise < ActiveRecord::Base
  belongs_to :programme
  belongs_to :exercise
  # before_save :calculate_time_per_set
  # def calculate_time_per_set
  # 	self.time + self.rest
  # end
end
