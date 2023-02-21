class Topic < ApplicationRecord
  validates :title_name, presence: true, length: { maximum: 25 }

  belongs_to :user
  has_many :contents, dependent: :destroy
end
