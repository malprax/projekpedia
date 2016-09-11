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

class Postjob < ActiveRecord::Base
  belongs_to :client, class_name: "User"
end
