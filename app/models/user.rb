class User < ApplicationRecord
  #保存前処理
  before_save {email.downcase!}

  #nameのvalidation
  validates :name, presence: true, length: {maximum: 50}

  #emailのvalidation
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i       #Emailのvalidationのための正規表現
  validates :email, presence: true, 
                    length: {maximum: 255}, 
                    format: {with: VALID_EMAIL_REGEX}, 
                    uniqueness: {case_sensitive: false}
  
  #password実装のため
  has_secure_password         #これにより下記の３つが出来るようになる
                              #ハッシュ化したパスワードをpassword_digestに保存出来るようになる
                              #password, password_confirmationの２つの仮想属性を追加し、存在性と値一致のバリデーションが追加される
                              #authenticateメソッド（引数にパスワードを入力するとUserオブジェクトを返し、間違っているとfalseを返すメソッド）
  validates :password, length: {minimum: 6}

end