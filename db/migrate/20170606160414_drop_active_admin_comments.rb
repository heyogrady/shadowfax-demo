class DropActiveAdminComments < ActiveRecord::Migration[5.1]

  def change
    drop_table :active_admin_comments # rubocop:disable Rails/ReversibleMigration
  end

end
