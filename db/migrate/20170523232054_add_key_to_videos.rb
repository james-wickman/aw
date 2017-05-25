 class AddKeyToVideos < ActiveRecord::Migration[5.0]
  def change
    add_column :videos, :key, :string
  end
end
