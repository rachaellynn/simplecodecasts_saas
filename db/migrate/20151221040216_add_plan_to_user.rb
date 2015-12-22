class AddPlanToUser < ActiveRecord::Migration
  def change
    add_column :users, :plan_id, :integer #users = the table in question plan_id is name of new column, integer is type
  end
end
