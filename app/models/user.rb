class User < ActiveRecord::Base
  has_secure_password
  has_many :project_details
  has_many :projects, through: :project_details
end
