# == Schema Information
#
# Table name: companies
#
#  id              :integer          not null, primary key
#  name            :string           default(""), not null
#  staff           :string
#  email           :string
#  tel             :string
#  fax             :string
#  address         :string
#  organization_id :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Company < ApplicationRecord
end
