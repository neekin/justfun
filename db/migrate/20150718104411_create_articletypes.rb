class CreateArticletypes < ActiveRecord::Migration
  def change
    create_table :articletypes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
