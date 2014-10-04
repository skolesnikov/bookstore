class Review < ActiveRecord::Base
  belongs_to :book

  STARS = 1..5
  validates :name, :comment, presence: true
  validates :comment, length: { minimum: 15 }, unless: 'comment.blank?'
  validates :stars, inclusion: { in: STARS, message: "must be from #{STARS.first} to #{STARS.last}" }
end
