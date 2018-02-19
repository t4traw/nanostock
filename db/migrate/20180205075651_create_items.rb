class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string    :sku,         null: false, default: ''
      t.string    :name,        null: false, default: ''
      t.decimal   :sell
      t.decimal   :buy
      t.string    :sku_alias  #CSV
      t.integer   :stock,           null: false, default: 0
      t.integer   :company_id,      null: false
      t.integer   :organization_id, null: false
      t.timestamps
    end
  end
end
