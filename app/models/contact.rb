class Contact < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PHONE_REGEX = /\A[0-9\-]+\z/

  enum subject: { サービスに関するお問い合わせ: 0, その他: 1 }
  validates :name, presence: true
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX, message: 'の形式が違います。(半角英数字で入力してください)' }
  validates :phone_number, presence: true, format: { with: VALID_PHONE_REGEX, message: 'の形式が違います。(半角数字とハイフンで入力してください)', allow_blank: true }
  validates :message, presence: true
  validates :subject, inclusion: { in: subjects.keys }
end
