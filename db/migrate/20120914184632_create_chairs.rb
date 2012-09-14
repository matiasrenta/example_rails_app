class CreateChairs < ActiveRecord::Migration
  def change
    create_table :chairs do |t|
      t.string :name
      t.string :material
      t.string :color

      t.timestamps
    end
  end
end
