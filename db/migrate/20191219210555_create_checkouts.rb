class CreateCheckouts < ActiveRecord::Migration[6.0]
  def change
    create_table :checkouts do |t|
      t.datetime :due_date
      t.boolean :return_status
    end
  end
end
