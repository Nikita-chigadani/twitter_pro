class AddImageToTweeets < ActiveRecord::Migration[6.1]
  def change
    add_column :tweeets, :image, :text
  end
end
