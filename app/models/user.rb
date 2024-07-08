class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :country
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
