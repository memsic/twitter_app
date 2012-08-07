# == Schema Information
#
# Table name: celebs
#
#  id         :integer         not null, primary key
#  username   :string(255)
#  t_id       :integer
#  followers  :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null

class Celeb < ActiveRecord::Base
end
