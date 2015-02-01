class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
    	t.string :email
    	t.text :message
    end
  end
end
