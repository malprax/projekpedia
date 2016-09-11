class Applyjob < ActiveRecord::Base
  belongs_to :freelance, classname: "User", foreign_key: :freelance_id 
end
