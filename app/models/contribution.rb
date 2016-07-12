class Contribution < ApplicationRecord
  # associations
  # parent

  # child
  belongs_to :campaign

  # class-level methods
  def self.last_created
    order("created_at desc")
  end

  # instance-level methods

  # validations
  validates :first_name, :last_name, presence: true
  validates :email,
    format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
end
