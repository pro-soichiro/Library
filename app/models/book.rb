class Book < ApplicationRecord
  before_save MessageOut
  before_validation MessageOut

  # TODO: 追加が必要です。

  validates :title, presence: true
  validates :description, absence: true, unless: :title?
  validates :description, length: { maximum: 100 }

end
