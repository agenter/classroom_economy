class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.references :user
      t.references :group
      t.float :amount

      t.timestamps
    end
  end
end
