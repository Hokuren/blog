class AddColumnStateToAriticles < ActiveRecord::Migration[6.0]
  def change
    add_column :ariticles, :state, :string,default: "in_draft"
  end
end
