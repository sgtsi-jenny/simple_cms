class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.integer "page_id"
      #same as: t.references :page
      t.string "name"
      t.integer "position"
      t.boolean "visible", :default => false
      t.string "content_type", :string
      t.text "content"    
      #t.datetime "created_at"
      #t.datetime "updated_at"
      t.timestamps
    end
    add_index("sections", "page_id")
  end
end
