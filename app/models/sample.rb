class Sample < ApplicationRecord
  belongs_to :project

  enum :sample_type, { draft: 0, approved: 1, rejected: 2 }
end
