class Applyjob < ActiveRecord::Base
  belongs_to :freelance, classname: "User"
end
