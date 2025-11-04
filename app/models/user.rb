class User < ApplicationRecord
  validates :first_name, :last_name, :email, presence: {message: "Is required."}
  has_many :projects, dependent: :destroy
end
