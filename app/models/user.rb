class User < ApplicationRecord
  has_many :provided_appliances, class_name: "Appliance", foreign_key: "provider_id"
  has_many :appliances, class_name: "Appliance", foreign_key: "customer_id"
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

# rawan.provided_appliances # All appliances where provider_id is equal to your ID
# rawan.appliances # All appliances where customer_id is equal to your ID
