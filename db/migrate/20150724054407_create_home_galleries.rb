class CreateHomeGalleries < ActiveRecord::Migration
  def change
    create_table :home_galleries do |t|
      t.string :image_url
      t.string :image_text
      t.string :button_url
      t.string :button_text
      t.string :image_title
      t.string :gallery_type
      t.boolean :is_home_img
      t.references :category
      t.boolean :is_active, default: true

      t.timestamps null: false
    end
  end
end
