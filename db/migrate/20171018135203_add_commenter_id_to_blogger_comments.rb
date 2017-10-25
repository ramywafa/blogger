class AddCommenterIdToBloggerComments < ActiveRecord::Migration[5.1]
  def change
    add_column :blogger_comments, :commenter_id, :integer, index: true, foreign_key: true
  end
end
