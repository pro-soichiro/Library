class Book < ApplicationRecord
  has_many :rentals
  has_many :users, through: :rentals

  before_validation MessageOut
  before_save MessageOut

  # TODO: 追加が必要です。

  validates :title, presence: true
  validates :description, absence: true, unless: :title?
  validates :description, length: { maximum: 100 }

end
