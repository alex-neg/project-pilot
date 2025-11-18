class Project < ApplicationRecord
  validates :name, presence: { message: "Name is required" }

  has_many :project_users, dependent: :destroy
  has_many :users, through: :project_users

  has_many :sites, dependent: :destroy

  enum :status, { pending: 0, ongoing: 1, completed: 2 }
end
