class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.string :image
      t.references :article, index: true

      t.timestamps
    end
  end
end
