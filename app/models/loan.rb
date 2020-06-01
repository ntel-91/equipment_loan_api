class Loan < ApplicationRecord
  belongs_to :equipment
  belongs_to :user
end
