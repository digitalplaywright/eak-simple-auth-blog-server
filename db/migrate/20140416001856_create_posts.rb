class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string  :title
      t.string  :details
      t.references :user

      t.timestamps
    end
  end
end
