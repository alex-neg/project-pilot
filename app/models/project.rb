class Project < ApplicationRecord
  has_many :sites, dependent: :destroy
  has_many :samples, dependent: :destroy
end
