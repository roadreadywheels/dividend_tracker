class AdminUser < ApplicationRecord

  scope :sorted, lambda { order('username ASC') }

end
