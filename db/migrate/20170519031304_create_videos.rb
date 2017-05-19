class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :url
      t.string :name
      t.string :description
      t.string :section

      t.timestamps
    end
  end
end
