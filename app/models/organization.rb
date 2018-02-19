# == Schema Information
#
# Table name: organizations
#
#  id         :integer          not null, primary key
#  name       :string           default(""), not null
#  email      :string
#  tel        :string
#  fax        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Organization < ApplicationRecord
end
