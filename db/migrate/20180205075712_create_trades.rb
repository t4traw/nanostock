class CreateTrades < ActiveRecord::Migration[5.1]
  def change
    create_table :trades do |t|
      t.date      :date,            null: false
      t.text      :varies # CSV row format: sku, [into|out], value, user_id
      t.integer   :organization_id, null: false
      t.timestamps
    end
  end
end
