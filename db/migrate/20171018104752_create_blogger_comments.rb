class CreateBloggerComments < ActiveRecord::Migration[5.1]
  def change
    create_table :blogger_comments do |t|
      t.integer :article_id, index: true, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
