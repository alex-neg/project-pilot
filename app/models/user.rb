class User < ApplicationRecord
  validates :first_name, :last_name, :email, presence: {message: "Is required."}

  has_many :project_users, dependent: :destroy
  has_many :projects, through: :project_users
  has_many :contexts, foreign_key: "recorded_by_id"
end
