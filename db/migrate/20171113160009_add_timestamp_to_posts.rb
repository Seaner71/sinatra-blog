class AddTimestampToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :create_time, :datetime
  end
end
