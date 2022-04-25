class User < ApplicationRecord
  has_many :rentals
  has_many :books, through: :rentals

  # Userモデルの属性emailが適正なメールアドレスかを
  # 独自のメソッドによるバリデーションによって実装する
  # validate :email_check
  validates :name,:email,presence: true
  validates :email, email_address: true

  # private
  # def email_check
  #   email_pattern = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/
  #   unless email_pattern.match(self.email)
  #     errors.add(:email, "正しいメールアドレスを入力してください")
  #   end
  # end

end
