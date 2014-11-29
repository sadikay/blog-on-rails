class RemoveArticleIdFromImages < ActiveRecord::Migration
  def self.up
    remove_column :images, :article_id
  end

  def self.down
    add_column :images, :article_id, :integer
  end
end
