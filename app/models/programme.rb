class Programme < ActiveRecord::Base
  belongs_to :programme_type
  


has_many :programme_supersets
has_many :supersets,through: :programme_supersets

has_many :programme_exercises
	has_many :exercises, through: :programme_exercises


end
