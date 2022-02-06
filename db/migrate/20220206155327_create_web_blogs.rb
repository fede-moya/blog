class CreateWebBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :web_blogs do |t|
      t.references :author, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
