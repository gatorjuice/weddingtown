module Concerns::Validatable
  extend ActiveSupport::Concern

  def start_time_cannot_be_later_than_end_time
    if start_time.present? && end_time.present? && start_time > end_time
      errors.add(:ceremony, 'Start time cannot happen after end time.')
    end
  end
end
