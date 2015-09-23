class CreateProjectDetails < ActiveRecord::Migration
  def change
    create_table :project_details do |t|
      t.references :user, index: true
      t.references :project, index: true

      t.timestamps
    end
  end
end
