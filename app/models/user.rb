class User < ActiveRecord::Base

  before_save { self.email = email.downcase }
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  has_secure_password
  has_many :trips, dependent: :destroy

  def generate_auth_token
    payload = { user_id: self.id }
    payload[:exp] = (72.hours.from_now).to_i
    JWT.encode(payload, Rails.application.secrets.secret_key_base)
  end
end
