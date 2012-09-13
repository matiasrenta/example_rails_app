class CreatePencils < ActiveRecord::Migration
  def change
    create_table :pencils do |t|
      t.string :name

      t.timestamps
    end
  end
end
