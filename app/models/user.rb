class User < ApplicationRecord
  has_many :appliances
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def is_provider
    user_type == "Provider"
  end

  def is_customer
    user_type == "Customer"
  end
end
