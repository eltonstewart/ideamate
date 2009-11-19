class Removedefaultvalues < ActiveRecord::Migration
  def self.up
    change_column  :users, :login, :string, :null => false
    change_column  :users, :crypted_password, :string, :null => false
    change_column  :users, :password_salt, :string, :null => false
    change_column  :users, :persistence_token, :string, :null => false
    change_column  :users, :single_access_token, :string, :null => false
    change_column  :users, :perishable_token, :string, :null => false

  end

  def self.down
    change_column  :users, :login, :string, :null => false, :default => 0                # optional, you can use email instead, or both
    change_column  :users, :crypted_password, :string, :null => false, :default => 0                # optional, see below
    change_column  :users, :password_salt, :string, :null => false, :default => 0                # optional, but highly recommended
    change_column  :users, :persistence_token, :string, :null => false, :default => 0                # required
    change_column  :users, :single_access_token, :string, :null => false, :default => 0                # optional, see Authlogic::Session::Params
    change_column  :users, :perishable_token, :string, :null => false, :default => 0
  end
end
