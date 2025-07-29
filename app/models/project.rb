class Project < ApplicationRecord
  validates :name, presence: { message: "Name is required" }
  has_many :sites, dependent: :destroy
  has_many :samples, dependent: :destroy
end
