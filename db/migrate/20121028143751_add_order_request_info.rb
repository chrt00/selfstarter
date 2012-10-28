class AddOrderRequestInfo < ActiveRecord::Migration
  def up
    add_column :orders, :request_host, :string
    add_column :orders, :settings_label, :string  
  end

  def down
  end
end
