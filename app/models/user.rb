class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         with_options presence: true do
          validates :email
          validates :password
          validates :nickname, format: { with: /\A[a-zA-Z0-9ぁ-んァ-ン一-龥]+\z/, message: "は半角英数と全角ひらがな、全角カタカナ、漢字で入力してください。"}
          validates :shop_name
          validates :financial_name
          validates :branch_name
          validates :account_number
          validates :kouza_name

          validates :first_name, format: { with: /\A[一-龥]+\z/, message: "は漢字で入力してください。"}
          validates :last_name, format: { with: /\A[一-龥]+\z/, message: "は漢字で入力してください。"}
          validates :first_name_kana, format: { with: /\A[ァ-ヶー－]+\z/, message: "は全角カタカナで入力してください。"}
          validates :last_name_kana, format: { with: /\A[ァ-ヶー－]+\z/, message: "は全角カタカナで入力してください。"}

          validates :postal_code
          validates :city
          validates :addresses
          validates :address_prefecture_id
          validates :buildings
          validates :shop_phone
        end
end
