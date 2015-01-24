class Watchlist < ActiveRecord::Base
  has_many :users
  has_many :senators
end
