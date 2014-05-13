class AddUserToGists < ActiveRecord::Migration
  def change
    add_column :gists, :user_id, :integer
    add_column :gists, :status, :string
  end
end
