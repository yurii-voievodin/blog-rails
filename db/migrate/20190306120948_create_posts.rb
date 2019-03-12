class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string "intro"
      t.string "title"
      t.string "template"
      t.text "text"
    	t.string "url"
    	t.timestamps
    end
  end
end
