class Article < ApplicationRecord
  include Visible

  # deopendent: :destroy ensuras that when an article is deleted
  # all its comments are also deleted
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
