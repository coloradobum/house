class Room < ActiveRecord::Base
  scope :public2, -> { where(:private => false) }
end
