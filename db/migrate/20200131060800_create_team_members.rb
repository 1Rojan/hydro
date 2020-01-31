class CreateTeamMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :team_members do |t|
      t.string :name
      t.string :position
      t.string :achievement
      t.references :department, null: false, foreign_key: true

      t.timestamps
    end
  end
end
