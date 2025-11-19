class Context < ApplicationRecord
  validates :phase, inclusion: { in: 1..99 }
  validates :sub_phase, inclusion: { in: ('a'..'z').to_a }

  belongs_to :excavation_unit
  belongs_to :recorded_by
  belongs_to :project_horizon

  has_one_attached :plan_image

  enum :context_type, { low: 0, medium: 1, high: 2 }
  enum :brightness, { low: 0, medium: 1, high: 2 }, prefix: true
  enum :hue, { low: 0, medium: 1, high: 2 }, prefix: true
  enum :colour, { red: 0, green: 1, blue: 2 }
  enum :compaction, { loose: 0, medium: 1, dense: 2 }, prefix: true
end
