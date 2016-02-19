class Crawl < ActiveRecord::Base
  belongs_to :user
  has_many :reviews
  has_many :hops
  has_many :bars, through: :hops
  has_many :invitees
  has_many :users, through: :invitees
end
