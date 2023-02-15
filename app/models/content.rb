class Content < ApplicationRecord
  validates :title,   presence: true
  validates :text,    presence: true

  belongs_to :user
  belongs_to :topic
  has_one_attached :image
end
