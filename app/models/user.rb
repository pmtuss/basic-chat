class User < ApplicationRecord
  validates :email, uniqueness: true, 
  format: { with: /\A(.+)@(.+)\z/, message: "Email invalid"  },
  uniqueness: { case_sensitive: false },
  length: { minimum: 4, maximum: 254 }

  validates :password, length: {in: 6..20}

  # validates :user_name, presence: true, length: {maximum: 20}
  validates :user_name, uniqueness: true, length: {in: 6..20, message: "Username's length is 6-20 characters"},
  format: { with: /\A(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])\z/, message: "User name contains only characters a-z or numbers"}

end
