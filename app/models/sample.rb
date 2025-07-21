class Sample < ApplicationRecord
  validates :name, presence: true
  belongs_to :project
  enum :sample_type, { Draft: 0, Approved: 1, Rejected: 2 }
  has_one_attached :photo
end
