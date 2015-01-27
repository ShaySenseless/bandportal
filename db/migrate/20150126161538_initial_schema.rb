class InitialSchema < ActiveRecord::Migration
  def change
  	create_table :categories do |t|
  		t.string  	:name
  	end

  	create_table :posts do |t|
  		t.string 		:title
  		t.text   		:description
  		t.string 		:country
  		t.string 		:city
  		t.string 		:state
  		t.string 		:zipcode
  		t.timestamps
  	end
  end
end
