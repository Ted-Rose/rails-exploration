class Article < ApplicationRecord
  include Visible

  # dependent: :destroy ensures that when an article is deleted
  # all its comments are also deleted
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  scope :published, -> { where(status: 'public') }
  scope :recent, -> { where('created_at >= ?', 1.week.ago) }
  scope :long_body, -> { where('LENGTH(body) > ?', 75) }
end