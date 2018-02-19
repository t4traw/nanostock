class CreateOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :organizations do |t|
      t.string    :name,    null: false, default: ''
      t.string    :email
      t.string    :tel
      t.string    :fax
      t.timestamps
    end
  end
end
