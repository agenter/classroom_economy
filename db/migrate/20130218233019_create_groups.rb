class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.int :user_id

      t.timestamps
    end
  end
end
