class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :kitchen

  before_create :set_default_status

  # validations

  validates :start_date, presence: true
  validates :end_date, presence: true

  validate :start_date_is_valid_datetime
  validate :end_date_is_valid_datetime
  validate :start_date_is_in_future
  validate :end_date_is_in_future
  validate :end_date_is_after_start_date

  private

  def set_default_status
    self.status = 'pending'
  end

  def start_date_is_valid_datetime
    DateTime.parse(start_date.to_s)
  rescue ArgumentError
    errors.add(:start_date, 'must be a valid datetime')
  end

  def end_date_is_valid_datetime
    DateTime.parse(end_date.to_s)
  rescue ArgumentError
    errors.add(:end_date, 'must be a valid datetime')
  end

  def start_date_is_in_future
    if start_date.present? && start_date < Date.today
      errors.add(:start_date, 'cannot be in the past')
    end
  end

  def end_date_is_in_future
    if end_date.present? && end_date < Date.today
      errors.add(:end_date, 'cannot be in the past')
    end
  end

  def end_date_is_after_start_date
    if start_date.present? && end_date.present? && end_date < start_date
      errors.add(:end_date, 'cannot be before the start date')
    end
  end
end
