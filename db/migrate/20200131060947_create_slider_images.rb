class CreateSliderImages < ActiveRecord::Migration[6.0]
  def change
    create_table :slider_images do |t|
      t.string :name

      t.timestamps
    end
  end
end
