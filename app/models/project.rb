class Project < ApplicationRecord

  has_one_attached :image

  enum status: { running: 0, completed:1 }
end
