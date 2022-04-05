class Book < ApplicationRecord
  # TODO: 追加が必要です。

  validates :title, presence: true
  validates :description, absence: true, unless: :title?
  validates :description, length: { maximum: 100 }
1
end
