class CreateSoundclouds < ActiveRecord::Migration[5.0]
  def change
    create_table :soundclouds do |t|
      t.string :button_name
      t.string :reference_number

      t.timestamps
    end
  end
end
