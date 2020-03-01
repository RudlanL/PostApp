class AddArticleToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :acticle, :text
  end
end
