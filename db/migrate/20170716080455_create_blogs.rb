class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.boolean :accessible,  default: true
      t.references :user, index: true,foreign_key: true

      t.timestamps null: false
    end
  end
end
