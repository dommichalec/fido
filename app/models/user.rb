class User < ApplicationRecord
  has_secure_password
  validates :first_name, :last_name, :email, presence: true

  validates :email,
    format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  def name
    self.first_name + " " + self.last_name
  end

  def self.authenticate(email, password)
    user = User.find_by(email: email)
    user && user.authenticate(password)
  end
end
