class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :content
      t.integer :articletype_id
      t.string :subject
      t.string :title
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
