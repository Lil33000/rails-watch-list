class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates_presence_of :movie, :list
  validates :comment, presence: true, length: { minimum: 6 }
  validates_uniqueness_of :movie_id,  { scope: :list_id }
end
