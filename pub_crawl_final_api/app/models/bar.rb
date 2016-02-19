class Bar < ActiveRecord::Base
  has_and_belongs_to_many :tags
  has_many :hops
  has_many :crawls, through: :hops
end
