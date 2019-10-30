class AddUserIdToArticles < ActiveRecord::Migration[6.0]
  def change
    add_reference :ariticles, :user, index: true
    add_foreign_key :ariticles, :users

  end
end
