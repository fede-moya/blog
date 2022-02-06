class User < ApplicationRecord
  self.locking_column = :version

  validates :email, uniqueness: true
end
