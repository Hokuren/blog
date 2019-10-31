class ChangeColumnPermissionFromStringToInteger < ActiveRecord::Migration[6.0]
  def change
    remove_column :users,  :premission_level, :string
    #remove_column :user, :permission_level, :integer    
    add_column :users, :permission_level, :integer, default: 1
    
    
  end
end

