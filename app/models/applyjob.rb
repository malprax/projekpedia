class Applyjob < ActiveRecord::Base
  belongs_to :freelance, class_name: "User", foreign_key: :freelance_id 
end
