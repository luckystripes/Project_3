class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.belongs_to :user, index: true
      t.belongs_to :job, index: true
      t.boolean :user_accept
      t.boolean :job_accept

      t.timestamps null: false
    end
  end
end
