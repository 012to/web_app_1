class Contact < ApplicationRecord
  enum subject: { サービスに関するお問い合わせ: 0, その他: 1 }
end
