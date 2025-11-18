class ExcavationUnit < ApplicationRecord
  belongs_to :site
  has_many :contexts, dependent: :destroy
end
