class DropPros < ActiveRecord::Migration
  def up
  	drop_table :pros
  end

  def down
  	 raise ActiveRecord::IrreversibleMigration
  end
end
