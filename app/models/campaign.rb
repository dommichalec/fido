class Campaign < ApplicationRecord
  # associations
  has_many :contributions
  
  # class-level methods
  def self.last_updated
    order("updated_at desc")
  end

  # instance-level methods
  def active?
    active == true
  end

  # validations
  validates :title, presence: true, length: { in: 1..50 }
  validates :description, length: { in: 1..200 }
  validates :amount_needed, numericality: { greater_than: 0 }
end
