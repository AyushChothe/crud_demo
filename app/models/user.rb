class User < ApplicationRecord
  validates :name, :age, :gender, :email, presence: true
  validates :gender, inclusion: { in: %w[Male Female] }
  validates :email, uniqueness: true
  validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 18 }
end
