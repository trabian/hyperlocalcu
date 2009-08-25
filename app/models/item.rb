class Item < ActiveRecord::Base

  default_scope :order => 'posted_at DESC'

end
