class Reservation < ApplicationRecord
  belongs_to :ballon
  belongs_to :user
end
