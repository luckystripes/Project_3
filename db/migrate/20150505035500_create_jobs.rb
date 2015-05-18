class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :job_type
      t.float :salary
      t.string :skill
      t.string :location

      t.timestamps null: false
    end
  end
end
