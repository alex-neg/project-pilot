class Sample < ApplicationRecord
  validates :name, presence: true
  belongs_to :project
  enum :sample_type, { draft: 0, approved: 1, rejected: 2 }
  has_one_attached :photo
end
