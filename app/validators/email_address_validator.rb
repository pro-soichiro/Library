class EmailAddressValidator < ActiveModel::EachValidator
  # 共通で使用できる独自のバリデーションヘルパーを作成する
  # 今回はemailのバリデーションチェック

  def validate_each(record, attribute, value)
    unless /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/ === value
      record.errors[attribute] << (options[:message] || "メールアドレスが正しくありません")
    end
  end
end