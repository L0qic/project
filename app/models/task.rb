class Task < ApplicationRecord
  has_many :assignments
  has_many :milestones

end
