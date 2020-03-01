class RenameActicleToArticle < ActiveRecord::Migration[6.0]
  def change
    rename_column :posts, :acticle, :article
  end
end
