class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string    :name,  null: false, default: ''
      t.string    :staff
      t.string    :email
      t.string    :tel
      t.string    :fax
      t.string    :address
      t.integer   :organization_id, null: false
      t.timestamps
    end
  end
end
