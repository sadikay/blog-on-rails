class AddLogoToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :logo, :string
  end
end
