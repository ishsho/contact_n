class Content < ApplicationRecord
  validates :title,   presence: true, length: { maximum: 25 }
  validates :text,    presence: true

  belongs_to :user
  belongs_to :topic
  has_one_attached :image
end
