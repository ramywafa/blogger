class AddAuthorIdToBloggerArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :blogger_articles, :author_id, :integer, index: true, foreign_key: true
  end
end
