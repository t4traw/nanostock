# == Schema Information
#
# Table name: trades
#
#  id              :integer          not null, primary key
#  date            :date             not null
#  varies          :text
#  organization_id :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Trade < ApplicationRecord
end
