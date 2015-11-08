class RemoveIndexFromUser < ActiveRecord::Migration
  def change
    remove_index  :users, :email
    remove_index  :users, :username
    remove_index  :users, :fullname
  end
end
