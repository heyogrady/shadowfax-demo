# == Schema Information
#
# Table name: users
#
#  authentication_token   :string
#  created_at             :datetime
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string
#  id                     :integer          not null, primary key
#  last_name              :string
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :string
#  profile_image          :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  role                   :string           default("standard")
#  sign_in_count          :integer          default(0), not null
#  updated_at             :datetime
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :trackable, :validatable, :rememberable

  mount_uploader :profile_image, ProfileImageUploader

  before_save :ensure_authentication_token_is_present

  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true

  def name
    [first_name, last_name].join(" ").strip
  end

  def super_admin?
    role == "super_admin"
  end

  def as_json(options={})
    new_options = options.merge(only: %i[email first_name last_name current_sign_in_at])

    super new_options
  end

  private

  def send_devise_notification(notification, *args)
    devise_mailer.send(notification, self, *args).deliver_later(queue: "devise_email")
  end

  def ensure_authentication_token_is_present
    if authentication_token.blank?
      self.authentication_token = generate_authentication_token
    end
  end

  def generate_authentication_token
    loop do
      token = Devise.friendly_token
      break token unless User.find_by(authentication_token: token)
    end
  end

end
