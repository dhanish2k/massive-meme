class CreateAdminUsersPagesJoin < ActiveRecord::Migration
  
  def change
    #create_table :admin_users_pages, :id=>false do |t|
    #	t.column "admin_user_id",:integer
    #	t.column "page_id",:integer
    #end
	add_index :admin_users_pages,["admin_user_id","page_id"]
   
  end



end
