class Appliance < ApplicationRecord
  belongs_to :provider, class_name: "User",
                        foreign_key: "provider_id"
  belongs_to :customer, class_name: "User",
                        foreign_key: "customer_id"
end
