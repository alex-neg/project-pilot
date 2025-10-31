class Site < ApplicationRecord
  belongs_to :project
  validates :name, presence: { message: "Name is required" }
  has_many :excavation_units, dependent: :destroy

  enum status: { pending: 0, ongoing: 1, completed: 2 }
end
