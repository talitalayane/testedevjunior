class Netflix < ApplicationRecord

  validates :title, uniquenes: true
  validates :title, :genre, :year, :published_at, presence: true


end
