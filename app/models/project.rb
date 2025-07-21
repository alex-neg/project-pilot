class Project < ApplicationRecord
  validates :name, presence: true
  has_many :sites, dependent: :destroy
  has_many :samples, dependent: :destroy
end
