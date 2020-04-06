class CreateVacations < ActiveRecord::Migration
  def change
    create_table :vacations do |t|
      t.string :description
      t.string :start_date
      t.string :end_date
      t.string :resort_name
      t.integer :user_id
    end
  end
end
