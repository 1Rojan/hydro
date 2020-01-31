class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :location
      t.string :owner
      t.string :description
      t.string :construction_period
      t.integer :status

      t.timestamps
    end
  end
end
