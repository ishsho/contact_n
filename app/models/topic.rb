class Topic < ApplicationRecord

  validates :title_name,   presence: true

  belongs_to :user
  has_many :contents

end
