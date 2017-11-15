class UpdateArticlesModel < ActiveRecord::Migration[5.1]
  def change
    rename_column :articles, :title, :name
    rename_column :articles, :text, :content
    add_column :articles, :author_name, :string
    add_column :articles, :published_at, :datetime
  end
end
