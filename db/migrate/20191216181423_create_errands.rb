class CreateErrands < ActiveRecord::Migration[6.0]
  def change
    create_table :errands do |t|
      t.string :errand_name
      t.string :location
      t.date :errand_order
      t.string :priority
      t.integer :pay
      t.string :notes
      t.integer :user_id

      t.timestamps
    end
  end
end
