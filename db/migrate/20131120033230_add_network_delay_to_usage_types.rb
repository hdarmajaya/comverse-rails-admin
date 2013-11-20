class AddNetworkDelayToUsageTypes < ActiveRecord::Migration
  def change
    add_column :usage_types, :network_delay, :integer
  end
end
