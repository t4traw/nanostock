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

require 'test_helper'

class TradeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
