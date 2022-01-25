class Netflix < ApplicationRecord
  include PgSearch::Model

  validates :title, uniquenes: true
  validates :title, :genre, :year, :published_at, presence: true

  pg_search_scope :search_by, against: %i[year genre country], using: { tsearch: { prefix: true } }
end
