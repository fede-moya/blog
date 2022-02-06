class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.references :web_blog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
