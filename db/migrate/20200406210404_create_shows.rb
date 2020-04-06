class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :start_time
      t.string :end_time
      t.string :location
      t.integer :vacation_id
    end
  end
end
