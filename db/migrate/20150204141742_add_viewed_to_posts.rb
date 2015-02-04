class AddViewedToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :viewed, :integer, :default => -1
  end
end
