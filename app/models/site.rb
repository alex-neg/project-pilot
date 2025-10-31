class Site < ApplicationRecord
  validates :name, presence: { message: "Name is required" }
  belongs_to :project
end
