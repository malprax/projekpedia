# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  name          :string
#  email         :string
#  password_hash :string
#  password_salt :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class User < ActiveRecord::Base
  has_many :biographies, dependent: :destroy
  has_many :postjobs, dependent: :destroy
  has_many :applyjobs, dependet: :destroy
end
