# == Schema Information
#
# Table name: postjobs
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  client_id  :string
#  timestamp  :string
#  price      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PostjobTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
