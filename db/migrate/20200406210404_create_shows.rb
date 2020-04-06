class CreateShows < ActiveRecord::Migration
  def change
    creåte_table :shows do |t|
      t._____ :start_time
      t.____ :end_time
      t.string :location
      t.integer :vacation_id
  end
end
