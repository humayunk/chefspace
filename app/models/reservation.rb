class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :kitchen

  private

  def set_default_status
    self.status ||= 'pending'
  end
end
