class Team < ApplicationRecord
  belongs_to :user
  has_many :members, dependent: :destroy
end
