class CreatePages < ActiveRecord::Migration
  def up
    create_table :pages do |t|
      t.integer "subject_id"
      #same as t:references :subject
      t.string "name"
      t.string "permalink"
      t.integer "position", :integer 
      t.boolean "visible", :default => false
      #t.datetime "created_at"
      #t.datetime "updated_at"
      t.timestamps
    end
      add_index("pages", "subject_id")
      add_index("pages", "permalink")
  end

  def down
  	drop_table :pages
  end
end
