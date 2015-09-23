class AddStatusColumnsToProjectDetails < ActiveRecord::Migration
  def change
    add_column :project_details, :project_status, :boolean
    add_column :project_details, :offer_status, :boolean
  end
end
