class RemoveTimestampFromPosts < ActiveRecord::Migration[5.1]
  def change
    rename_column :posts, :create_time, :created_at
  end
end
