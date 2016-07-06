class Campaign < ApplicationRecord
  def self.last_updated
    order("updated_at desc")
  end

  def active?
    active == true
  end
end
