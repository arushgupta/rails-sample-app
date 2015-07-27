class CreateOverviews < ActiveRecord::Migration
  def change
    create_table :overviews do |t|
      t.string :season
      t.date :start_date
      t.date :end_date
      t.string :location
      t.references :category
      t.boolean :is_active, :default => true
      
      t.timestamps null: false
    end
  end
end
