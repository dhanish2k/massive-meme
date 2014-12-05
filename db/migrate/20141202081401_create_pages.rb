class CreatePages < ActiveRecord::Migration
  
  def up
    create_table :pages do |t|
    	t.integer "subject_id"
    	t.column "name",:string	
    	t.column "permalink",:integer
    	t.column "position",:integer
    	t.column "visible",:boolean,:default =>false
      t.timestamps
    end
    add_index("pages","permalink")
    add_index("pages","subject_id")
  end

  def down
  	drop_table :pages
  end
end
