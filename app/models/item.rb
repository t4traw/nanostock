# == Schema Information
#
# Table name: items
#
#  id              :integer          not null, primary key
#  sku             :string           default(""), not null
#  name            :string           default(""), not null
#  sell            :decimal(, )
#  buy             :decimal(, )
#  sku_alias       :string
#  stock           :integer          default(0), not null
#  company_id      :integer          not null
#  organization_id :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  lot             :integer
#

class Item < ApplicationRecord
end
