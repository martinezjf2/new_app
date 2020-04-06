class CreateVacations < ActiveRecord::Migration
  def change
    create_table :vacations do |t|
      t.string :description
      t.____  :start_date
      t.____  :end_date
      t.string :resort_name
      t.integer :user.id
    end
  end
end
