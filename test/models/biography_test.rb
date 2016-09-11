# == Schema Information
#
# Table name: biographies
#
#  id          :integer          not null, primary key
#  user_id     :string
#  city        :string
#  address     :string
#  image       :string
#  ability     :string
#  geolocation :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class BiographyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
