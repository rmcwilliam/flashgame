class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :users, :paswword_digest, :password_digest
  end
end
