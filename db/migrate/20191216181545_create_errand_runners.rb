class CreateErrandRunners < ActiveRecord::Migration[6.0]
  def change
    create_table :errand_runners do |t|
      t.integer :user_id
      t.integer :errand_id

      t.timestamps
    end
  end
end
