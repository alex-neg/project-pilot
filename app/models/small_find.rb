class SmallFind < ApplicationRecord
  validates :name, presence: { message: "Name is required" }
  belongs_to :project
  enum :find_type, {type1: 0, type2: 1, type3: 2}
  has_one_attached :before_photo
  has_one_attached :after_photo
end
