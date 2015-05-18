class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :type
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :job_type
      t.string :skill_set
      t.string :edu_level
      t.string :work_exp
      t.string :password_digest
      t.string :date_available
      t.string :profile_pic
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :company_name

      t.timestamps null: false
    end
  end
end
