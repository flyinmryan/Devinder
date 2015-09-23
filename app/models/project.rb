class Project < ActiveRecord::Base
  has_many :project_details
  has_many :users, through: :project_details
end
