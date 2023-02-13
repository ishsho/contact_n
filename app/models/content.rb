class Content < ApplicationRecord

  validates :title,   presence: true
  validates :text,    presence: true

  belongs_to :user
  belongs_to :topic 
  
end
