class Artist < ActiveRecord::Base
  has_many :shows, through: :gigs
end
