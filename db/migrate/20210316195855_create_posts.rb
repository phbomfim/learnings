class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|

      t.datetime :published_at
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
