class AddConverToAriticles < ActiveRecord::Migration[6.0]
  def change
    add_attachment :ariticles, :cover
  end
end
