class User < ActiveRecord::Base
  after_create :send_welcome_message
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User
  has_many :questions
  has_many :answers

  def send_welcome_message
    ApplicationMailer.signup_confirmation(self)
  end
end
