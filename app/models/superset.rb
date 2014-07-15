class Superset < ActiveRecord::Base
	has_many :programme_supersets
	has_many :programmes, through: :programme_supersets
end
