class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable,
    :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User
  has_many :crawls
  has_many :invitees
  has_many :invites, through: :invitees, source: :crawls
  has_many :reviews
end
