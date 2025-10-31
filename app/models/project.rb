class Project < ApplicationRecord
  belongs_to :user
  validates :name, presence: { message: "Name is required" }
  has_many :sites, dependent: :destroy

  enum status: { pending: 0, ongoing: 1, completed: 2 }
end
