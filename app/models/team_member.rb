class TeamMember < ApplicationRecord
  belongs_to :department

  has_one_attached :image
end
