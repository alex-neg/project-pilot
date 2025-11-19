class Context < ApplicationRecord
  validates :phase, inclusion: { in: 1..99 }
  validates :sub_phase, inclusion: { in: ("a".."z").to_a }

  belongs_to :excavation_unit
  belongs_to :recorded_by, class_name: "User"
  belongs_to :project_horizon, optional: true

  has_one_attached :plan_image

  enum :context_type, { natural: 0, artificial: 1, hybrid: 2 }
  enum :brightness, { dark: 0, pale: 1, light: 2 }, prefix: true
  enum :hue, { red: 0, yellow: 1, blue: 2 }, prefix: true
  enum :colour, { red: 0, green: 1, blue: 2 }
  enum :compaction, { loose: 0, medium: 1, dense: 2 }, prefix: true

  def recorded_by_name
    "#{recorded_by&.first_name} #{recorded_by&.last_name}"
  end
end
