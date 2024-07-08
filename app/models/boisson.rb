class Boisson < ApplicationRecord
  belongs_to :user
  belongs_to :drink
end
