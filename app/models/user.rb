class User < ApplicationRecord
  # Userモデルの属性emailが適正なメールアドレスかを
  # 独自のメソッドによるバリデーションによって実装する
  validate :email_check

  private
  def email_check
    email_pattern = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/
    unless email_pattern.match(self.email)
      errors.add(:email, "正しいメールアドレスを入力してください")
    end
  end

end
