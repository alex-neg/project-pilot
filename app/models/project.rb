class Project < ApplicationRecord
  has_many :sites, dependent: :destroy
end
