class ProgrammeSuperset < ActiveRecord::Base
  belongs_to :programme
  belongs_to :superset
end
