class Reservation < ApplicationRecord

  belongs_to :user
  belongs_to :listing

  validate :start_must_be_before_end_date

  def start_must_be_before_end_date
      errors.add(:start_date, "must be before end time") unless
          start_date < end_date
  end

  def duree_reservation

    (self.end_date - self.start_date)/(3600*24)
    # Reservation.find(840).duree_reservation      ->  Test console 

  end

end
