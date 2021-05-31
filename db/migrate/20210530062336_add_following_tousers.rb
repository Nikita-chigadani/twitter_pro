class AddFollowingTousers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :following, :text
  end
end
