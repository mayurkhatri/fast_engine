class CreateFastengineParticles < ActiveRecord::Migration[5.1]
  def change
    create_table :fastengine_particles do |t|
      t.string :name
      t.integer :speed

      t.timestamps
    end
  end
end
